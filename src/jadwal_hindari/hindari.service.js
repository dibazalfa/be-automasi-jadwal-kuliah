// Service layer berujuan untuk handle business logic
// Kenapa dipisah? Supaya tanggung jawabnya ter-isolate dan functions-nya reusable

const { findHindari, findHindariById, insertHindari, deleteHindari, editHindari } = require("./hindari.repository");

const getAllHindari = async () => {
    return await findHindari();
};

const getHindariById = async (id_hindari) => {
    const hindari = await findHindariById(id_hindari);
    if (!hindari) {
        throw new Error("Data Jadwal Hindari tidak ditemukan");
    }
    return hindari;
};

const createHindari = async (newHindariData) => {
    return await insertHindari(newHindariData);
};

const deleteHindariById = async (id_hindari) => {
    await getHindariById(id_hindari);
    return await deleteHindari(id_hindari);
};

const editHindariById = async (id_hindari, hindariData) => {
    await getHindariById(id_hindari);
    return await editHindari(id_hindari, hindariData);
};

module.exports = {
    getAllHindari,
    getHindariById,
    createHindari,
    deleteHindariById,
    editHindariById
};
