const express = require('express');
const {
    loginUser,
    registerUser,
} = require('./auth.service');
const { auth } = require('../middleware/auth');

const router = express.Router();

router.post('/login', async (req, res) => {
    try {
        const { username, password } = req.body;

        if (!username || !password) {
            return res.status(400).send("Please provide both username and password.");
        }

        const tokens = await loginUser(username, password);

        res.send({
            message: "Login successful",
            ...tokens,
        });
    } catch (err) {
        res.status(400).send(err.message);
    }
});

router.post('/register', async (req, res) => {
    try {
        const { username, password } = req.body;

        if (!username || !password) {
            return res.status(400).send("Please provide all required fields.");
        }

        const user = await registerUser({ username, password });

        res.send({
            message: "Registration successful",
            data: user,
        });
    } catch (err) {
        res.status(400).send(err.message);
    }
});

module.exports = router;
