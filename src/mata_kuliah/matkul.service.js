// Service layer berujuan untuk handle business logic
// Kenapa dipisah? Supaya tanggung jawabnya ter-isolate dan functions-nya reusable

const { findMatkul, findMatkulByKode, insertMatkul, deleteMatkul, editMatkul } = require("./matkul.repository");

const getAllMatkul = async () => {
    return await findMatkul();
};

const getMatkulByKode = async (matkul_kode) => {
    const matkul = await findMatkulByKode(matkul_kode);
    if (!matkul) {
        throw new Error("Data Mata Kuliah tidak ditemukan");
    }
    return matkul;
};

const createMatkul = async (newMatkulData) => {
    const existingMatkul = await findMatkulByKode(newMatkulData.matkul_kode);

    if (existingMatkul) {
        throw Error('Data Mata Kuliah sudah ada');
    }

    return await insertMatkul(newMatkulData);
};

const deleteMatkulByKode = async (matkul_kode) => {
    await getMatkulByKode(matkul_kode);
    return await deleteMatkul(matkul_kode);
};

const editMatkulByKode = async (matkul_kode, matkulData) => {
    await getMatkulByKode(matkul_kode);
    return await editMatkul(matkul_kode, matkulData);
};

module.exports = {
    getAllMatkul,
    getMatkulByKode,
    createMatkul,
    deleteMatkulByKode,
    editMatkulByKode
};
