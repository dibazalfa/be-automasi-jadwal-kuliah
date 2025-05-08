// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

const findUserByEmail = async (email) => {
    const user = await prisma.user.findUnique({
        where: {
            email,
        },
    });

    return user;
};

const findUserByUsername = async (username) => {
    const user = await prisma.user.findFirst({
        where: {
            username,
        },
    });

    return user;
};

const insertUser = async (userData) => {
    const user = await prisma.user.create({
        data: {
            name: userData.name,
            username: userData.username,
            email: userData.email,
            password: userData.password,
            role: userData.role,
        },
    });

    return user;
};

module.exports = {
    findUserByEmail,
    findUserByUsername,
    insertUser,
};
