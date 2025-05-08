const {
    findMkDosen,
    findMkDosenById,
    insertMkDosen,
    deleteMkDosen,
    editMkDosen
} = require("./mk_dosen.repository");

const getAllMkDosen = async (userId) => {
    return await findMkDosen(userId);
};

const getMkDosenById = async (id_mk_kelas_dosen, userId) => {
    const mkDosen = await findMkDosenById(id_mk_kelas_dosen, userId);
    if (!mkDosen) {
        throw new Error("Data Mata Kuliah dan Dosen Pengampu tidak ditemukan");
    }
    return mkDosen;
};

const createMkDosen = async (newMkDosenData, userId) => {
    return await insertMkDosen(newMkDosenData, userId);
};

const deleteMkDosenById = async (id_mk_kelas_dosen, userId) => {
    await getMkDosenById(id_mk_kelas_dosen, userId);
    return await deleteMkDosen(id_mk_kelas_dosen);
};

const editMkDosenById = async (id_mk_kelas_dosen, mkDosenData, userId) => {
    await getMkDosenById(id_mk_kelas_dosen, userId);
    return await editMkDosen(id_mk_kelas_dosen, mkDosenData, userId);
};

module.exports = {
    getAllMkDosen,
    getMkDosenById,
    createMkDosen,
    deleteMkDosenById,
    editMkDosenById
};
