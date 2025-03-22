// Service layer untuk business logic

const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const prisma = require('../db');
const { findUserByUsername, insertUser } = require('./auth.repository');

const JWT_SECRET = process.env.JWT_SECRET;

const loginUser = async (username, password) => {
    const user = await findUserByUsername(username);

    if (!user) {
        throw Error('User not found');
    }

    const isPasswordValid = await bcrypt.compare(password, user.password);

    if (!isPasswordValid) {
        throw Error('Invalid credentials');
    }

    const accessToken = jwt.sign(
        { id: user.id, username: user.username, tokenType: 'access' },
        JWT_SECRET,
        { expiresIn: '6h' }
    );

    return { accessToken, id: user.id };
};

const registerUser = async (userData) => {
    const { username, password } = userData;

    const hashedPassword = await bcrypt.hash(password, 10);

    const newUser = await insertUser({
        ...userData,
        password: hashedPassword,
    });

    return newUser;
};

module.exports = {
    loginUser,
    registerUser,
};
