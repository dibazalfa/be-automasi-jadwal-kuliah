const {
    findHindari,
    findHindariById,
    insertHindari,
    deleteHindari,
    editHindari
} = require("./hindari.repository");

const getAllHindari = async (userId) => {
    return await findHindari(userId);
};

const getHindariById = async (id_hindari, userId) => {
    const hindari = await findHindariById(id_hindari, userId);
    if (!hindari) {
        throw new Error("Data Jadwal Hindari tidak ditemukan");
    }
    return hindari;
};

const createHindari = async (newHindariData, userId) => {
    return await insertHindari(newHindariData, userId);
};

const deleteHindariById = async (id_hindari, userId) => {
    await getHindariById(id_hindari, userId);
    return await deleteHindari(id_hindari, userId);
};

const editHindariById = async (id_hindari, hindariData, userId) => {
    await getHindariById(id_hindari, userId);
    return await editHindari(id_hindari, hindariData, userId);
};

module.exports = {
    getAllHindari,
    getHindariById,
    createHindari,
    deleteHindariById,
    editHindariById
};
