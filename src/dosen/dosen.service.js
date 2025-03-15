// Service layer berujuan untuk handle business logic
// Kenapa dipisah? Supaya tanggung jawabnya ter-isolate dan functions-nya reusable

const { findDosen, findDosenByKode, insertDosen, deleteDosen, editDosen } = require("./dosen.repository");

const getAllDosen = async () => {
    return await findDosen();
};

const getDosenByKode = async (dosen_kode) => {
    const dosen = await findDosenByKode(dosen_kode);
    if (!dosen) {
        throw new Error("Data dosen tidak ditemukan");
    }
    return dosen;
};

const createDosen = async (newDosenData) => {
    const existingDosen = await findDosenByKode(newDosenData.dosen_kode);
    if (existingDosen) {
        throw Error('Data dosen sudah ada');
    }
    return await insertDosen(newDosenData);
};

const deleteDosenByKode = async (dosen_kode) => {
    await getDosenByKode(dosen_kode);
    return await deleteDosen(dosen_kode);
};

const editDosenByKode = async (dosen_kode, dosenData) => {
    await getDosenByKode(dosen_kode);
    return await editDosen(dosen_kode, dosenData);
};

module.exports = {
    getAllDosen,
    getDosenByKode,
    createDosen,
    deleteDosenByKode,
    editDosenByKode
};
