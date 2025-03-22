// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

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
            username: userData.username,
            password: userData.password,
        },
    });

    return user;
};

module.exports = {
    findUserByUsername,
    insertUser,
};
