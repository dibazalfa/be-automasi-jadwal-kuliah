const prisma = require("../db");
const bcrypt = require('bcrypt');
const { findUsers, findUserById, findUserByEmail, insertUser, deleteUser, editUser, updateUserPasswordInRepo } = require("./user.repository");

const getAllUsers = async () => {
    const users = await findUsers();

    return users;
}

const getUserById = async (id) => {

    const user = await findUserById(id);

    if (!user) {
        throw Error('User not found');
    }

    return user;
}

// const createUser = async (newUserData) => {
//     const user = await insertUser(newUserData);

//     return user;
// }

const createUser = async (userData) => {
    const existingUser = await findUserByEmail(userData.email);

    if (existingUser) {
        throw Error('User already exists');
    }

    const hashedPassword = await bcrypt.hash(userData.password, 10);

    const newUser = await insertUser({
        ...userData,
        password: hashedPassword,
    });

    return newUser;
};

const deleteUserById = async (id) => {
    await getUserById(id);

    await deleteUser(id);
}

const editUserById = async (id, userData) => {
    await getUserById(id);

    if (userData.password) {
        userData.password = await bcrypt.hash(userData.password, 10);
    }

    const user = await editUser(id, userData);

    return user;
}

const updateUserPassword = async (id, newPassword) => {
    // Hash the new password
    const hashedPassword = await bcrypt.hash(newPassword, 10);

    // Delegate to the repository to update the user
    await updateUserPasswordInRepo(id, hashedPassword);
}


module.exports = {
    getAllUsers,
    getUserById,
    createUser,
    deleteUserById,
    editUserById,
    updateUserPassword,
}