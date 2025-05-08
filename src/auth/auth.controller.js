const express = require('express');
const {
    loginUser,
    registerUser,
    refreshAccessToken,
    verifyToken,
} = require('./auth.service');
const { auth, refreshAuth } = require('../middleware/auth');

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
        console.error('Error during login:', err); // Tambahkan log
        res.status(400).send(err.message);
    }
});

router.post('/refresh', async (req, res) => {
    try {
        const { refreshToken } = req.body;

        if (!refreshToken) {
            return res.status(400).json({ error: 'Refresh token is required' });
        }

        const newAccessToken = await refreshAccessToken(refreshToken);

        res.status(200).json({
            message: 'Access token refreshed successfully',
            ...newAccessToken,
        });
    } catch (err) {
        res.status(401).json({ error: err.message });
    }
});


router.get('/verify', (req, res) => {
    try {
        const user = verifyToken(req.headers.authorization.split(' ')[1]); // Extract token
        res.status(200).json({ message: "Token is valid", user });
    } catch (err) {
        res.status(401).send(err.message);
    }
});


router.post('/register', async (req, res) => {
    try {
        const { email, password, name, role, username } = req.body;

        if (!email || !password || !name || !role || !username) {
            return res.status(400).send("Please provide all required fields.");
        }

        const user = await registerUser({ email, password, name, role, username });

        res.send({
            message: "Registration successful",
            data: user,
        });
    } catch (err) {
        res.status(400).send(err.message);
    }
});

module.exports = router;
