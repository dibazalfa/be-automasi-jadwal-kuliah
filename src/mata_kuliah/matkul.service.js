const {
    findMatkul,
    findMatkulByKode,
    insertMatkul,
    deleteMatkul,
    editMatkul
} = require("./matkul.repository");

const getAllMatkul = async (userId) => {
    return await findMatkul(userId);
};

const getMatkulByKode = async (matkul_kode, userId) => {
    const matkul = await findMatkulByKode(matkul_kode, userId);
    if (!matkul) {
        throw new Error("Data Mata Kuliah tidak ditemukan");
    }
    return matkul;
};

const createMatkul = async (newMatkulData, userId) => {
    const existingMatkul = await findMatkulByKode(newMatkulData.matkul_kode, userId);
    if (existingMatkul) {
        throw Error('Data Mata Kuliah sudah ada');
    }

    return await insertMatkul(newMatkulData, userId);
};

const deleteMatkulByKode = async (matkul_kode, userId) => {
    await getMatkulByKode(matkul_kode, userId);
    return await deleteMatkul(matkul_kode, userId);
};

const editMatkulByKode = async (matkul_kode, matkulData, userId) => {
    await getMatkulByKode(matkul_kode, userId);
    return await editMatkul(matkul_kode, matkulData, userId);
};

module.exports = {
    getAllMatkul,
    getMatkulByKode,
    createMatkul,
    deleteMatkulByKode,
    editMatkulByKode
};
