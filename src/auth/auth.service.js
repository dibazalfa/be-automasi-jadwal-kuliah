// Service layer untuk business logic

const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const prisma = require('../db');
const { findUserByEmail, findUserByUsername, insertUser } = require('./auth.repository');

const JWT_SECRET = process.env.JWT_SECRET;
const REFRESH_TOKEN_SECRET = process.env.REFRESH_TOKEN_SECRET;

// Login service
const loginUser = async (username, password) => {
    const user = await findUserByUsername(username);

    if (!user) {
        throw Error('User not found');
    }

    const isPasswordValid = await bcrypt.compare(password, user.password);

    if (!isPasswordValid) {
        throw Error('Invalid credentials');
    }

    // Generate tokens
    const accessToken = jwt.sign(
        { id: user.id, username: user.username, role: user.role, tokenType: 'access' },
        JWT_SECRET,
        { expiresIn: '6h' } // Short expiry
    );

    const refreshToken = jwt.sign(
        { id: user.id, username: user.username, role: user.role, tokenType: 'refresh' },
        REFRESH_TOKEN_SECRET,
        { expiresIn: '7d' } // Long expiry
    );

    return { accessToken, refreshToken, id: user.id, role: user.role, };
};

// Refresh token service
const refreshAccessToken = async (refreshToken) => {
    if (!refreshToken) {
        throw Error('Refresh token is required');
    }

    try {
        // Verify refresh token
        const decoded = jwt.verify(refreshToken, REFRESH_TOKEN_SECRET);

        // Generate new access token
        const newAccessToken = jwt.sign(
            { id: decoded.id, username: decoded.username, role: decoded.role, tokenType: 'access' },
            JWT_SECRET,
            { expiresIn: '6h' }
        );

        return { accessToken: newAccessToken };
    } catch (err) {
        throw Error('Invalid refresh token');
    }
};

// Registration service
const registerUser = async (userData) => {
    const { email, username, password } = userData;

    // Validate email format
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        throw Error('Invalid email format');
    }

    const existingUser = await findUserByEmail(email);
    if (existingUser) {
        throw Error('User already exists');
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    const newUser = await insertUser({
        ...userData,
        password: hashedPassword,
    });

    return newUser;
};

// Verify token service
const verifyToken = (accessToken) => {
    try {
        const decoded = jwt.verify(accessToken, JWT_SECRET);
        return decoded;
    } catch (err) {
        throw Error('Invalid token');
    }
};

module.exports = {
    loginUser,
    refreshAccessToken,
    registerUser,
    verifyToken,
};
