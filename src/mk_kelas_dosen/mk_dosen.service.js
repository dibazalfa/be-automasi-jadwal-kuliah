const { findMkDosen, findMkDosenById, insertMkDosen, deleteMkDosen, editMkDosen } = require("./mk_dosen.repository");

const getAllMkDosen = async () => {
    return await findMkDosen();
};

const getMkDosenById = async (id_mk_kelas_dosen) => {
    const mkDosen = await findMkDosenById(id_mk_kelas_dosen);
    if (!mkDosen) {
        throw new Error("Data Mata Kuliah dan Dosen Pengampu tidak ditemukan");
    }
    return mkDosen;
};

const createMkDosen = async (newMkDosenData) => {
    return await insertMkDosen(newMkDosenData);
};

const deleteMkDosenById = async (id_mk_kelas_dosen) => {
    await getMkDosenById(id_mk_kelas_dosen);
    return await deleteMkDosen(id_mk_kelas_dosen);
};

const editMkDosenById = async (id_mk_kelas_dosen, mkDosenData) => {
    await getMkDosenById(id_mk_kelas_dosen);
    return await editMkDosen(id_mk_kelas_dosen, mkDosenData);
};

module.exports = {
    getAllMkDosen,
    getMkDosenById,
    createMkDosen,
    deleteMkDosenById,
    editMkDosenById
};
