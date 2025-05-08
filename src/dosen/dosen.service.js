const {
    findDosen,
    findDosenByKode,
    insertDosen,
    deleteDosen,
    editDosen
} = require("./dosen.repository");

const getAllDosen = async (userId) => {
    return await findDosen(userId);
};

const getDosenByKode = async (dosen_kode, userId) => {
    const dosen = await findDosenByKode(dosen_kode, userId);
    if (!dosen) {
        throw new Error("Data dosen tidak ditemukan");
    }
    return dosen;
};

const createDosen = async (newDosenData, userId) => {
    const existingDosen = await findDosenByKode(newDosenData.dosen_kode, userId);
    if (existingDosen) {
        throw Error('Data dosen sudah ada');
    }
    return await insertDosen(newDosenData, userId);
};

const deleteDosenByKode = async (dosen_kode, userId) => {
    await getDosenByKode(dosen_kode, userId);
    return await deleteDosen(dosen_kode, userId);
};

const editDosenByKode = async (dosen_kode, dosenData, userId) => {
    await getDosenByKode(dosen_kode, userId);
    return await editDosen(dosen_kode, dosenData, userId);
};

module.exports = {
    getAllDosen,
    getDosenByKode,
    createDosen,
    deleteDosenByKode,
    editDosenByKode
};
