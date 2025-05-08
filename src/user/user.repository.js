const prisma = require('../db');

const findUsers = async (id) => {
    const users = await prisma.user.findMany();

    return users;
};

const findUserById = async (id) => {
    const user = await prisma.user.findUnique({
        where: {
            id,
        },
    });

    return user;
}

const findUserByEmail = async (email) => {
    const user = await prisma.user.findUnique({
        where: {
            email,
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
}

const deleteUser = async (id) => {
    await prisma.user.delete({
        where: {
            id,
        },
    });
}

const editUser = async (id, userData) => {
    const user = await prisma.user.update({
        where: {
            id,
        },
        data: {
            name: userData.name,
            username: userData.username,
            email: userData.email,
            password: userData.password,
            role: userData.role,
        }
    });

    return user;
}

const updateUserPasswordInRepo = async (id, hashedPassword) => {
    // Update the user password using Prisma
    await prisma.user.update({
        where: { id },
        data: { password: hashedPassword }
    });
}


module.exports = {
    findUsers,
    findUserById,
    findUserByEmail,
    insertUser,
    deleteUser,
    editUser,
    updateUserPasswordInRepo
};