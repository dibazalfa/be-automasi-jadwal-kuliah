const express = require('express');
const bcrypt = require('bcrypt');
const prisma = require('../db');
const { auth } = require('../middleware/auth');
const roleAuth = require('../middleware/role');

const {
    getAllUsers,
    getUserById,
    createUser,
    deleteUserById,
    editUserById,
    updateUserPassword,
} = require('./user.service');

const router = express.Router();

router.get('/', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
    const users = await getAllUsers();

    res.send(users);
});

router.get('/me', auth, async (req, res) => {
    try {
        console.log(req.user.id)

        const userId = req.user.id;
        const user = await getUserById(userId);

        if (!user) {
            return res.status(404).send("User not found");
        }

        res.send(user);

    } catch (err) {
        res.status(500).send(err.message);
    }
});


router.get('/:id', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
    try {
        const userId = req.params.id;
        const user = await getUserById(userId);

        res.send(user);

    } catch (err) {
        res.status(400).send(err.message);
    }
});

// router.post('/', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
//     try {
//         const newUserData = req.body;

//         const user = await createUser(newUserData);

//         res.send({
//             data: user,
//             message: "User created successfully",
//         });
//     } catch (err) {
//         res.status(400).send(err.message);
//     }
// });

router.post('/', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
    try {
        const { email, password, name, role, username } = req.body;

        // Check if all fields are provided
        if (!email || !password || !name || !role || !username) {
            return res.status(400).send("Please provide all required fields.");
        }

        // Validate email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            return res.status(400).send("Invalid email format.");
        }

        // If validations pass, proceed to registration
        const user = await createUser({ email, password, name, role, username });

        res.status(201).json({
            message: "User create successful",
            data: user,
        });
    } catch (err) {
        // Check for specific error messages
        if (err.message === 'User already exists') {
            return res.status(409).json({ error: err.message });
        }

        // For any other unexpected error
        res.status(500).json({ error: "Internal Server Error", details: err.message });
    }
});

router.delete('/:id', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
    try {
        const userId = req.params.id;

        await deleteUserById(userId);

        res.send("User deleted successfully");
    } catch (err) {
        res.status(400).send(err.message);
    }
});

// router.put('/:id', async (req, res) => {
//     const userId = req.params.id;
//     const userData = req.body;

//     if (!(userData.image && userData.description && userData.price && userData.name)) {
//         return res.status(400).send("Please provide all the required fields");
//     }

//     const user = await editUserById(parseInt(userId), userData);

//     res.send({
//         data: user,
//         message: "User updated successfully",
//     });
// });

router.patch('/me', auth, async (req, res) => {
    try {
        const userId = req.user.id;
        const { oldPassword, newPassword } = req.body;

        // Fetch user by ID
        const user = await getUserById(userId);

        // Check if oldPassword matches the current password
        const isPasswordMatch = await bcrypt.compare(oldPassword, user.password);
        if (!isPasswordMatch) {
            return res.status(400).send({ message: 'Incorrect old password' });
        }

        // Delegate password update to the service layer
        await updateUserPassword(userId, newPassword);

        res.send({
            message: 'Password updated successfully',
        });
    } catch (error) {
        res.status(400).send(error.message);
    }
});

router.patch('/:id', auth, roleAuth(['ADMINISTRATOR']), async (req, res) => {
    try {
        const userId = req.params.id;
        const userData = req.body;

        const user = await editUserById(userId, userData);

        res.send({
            data: user,
            message: "User updated successfully",
        });
    } catch (error) {
        res.status(400).send(err.message);
    }
});

module.exports = router;