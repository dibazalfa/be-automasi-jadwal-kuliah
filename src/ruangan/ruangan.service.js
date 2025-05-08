const {
    findRuangan,
    findRuanganByKode,
    insertRuangan,
    deleteRuangan,
    editRuangan
} = require("./ruangan.repository");

const getAllRuangan = async (userId) => {
    return await findRuangan(userId);
};

const getRuanganByKode = async (ruangan_kode, userId) => {
    const ruangan = await findRuanganByKode(ruangan_kode, userId);
    if (!ruangan) {
        throw new Error("Data Ruangan tidak ditemukan");
    }
    return ruangan;
};

const createRuangan = async (newRuanganData, userId) => {
    const existing = await findRuanganByKode(newRuanganData.ruangan_kode, userId);
    if (existing) {
        throw new Error("Kode ruangan sudah digunakan");
    }
    return await insertRuangan(newRuanganData, userId);
};

const deleteRuanganByKode = async (ruangan_kode, userId) => {
    await getRuanganByKode(ruangan_kode, userId);
    return await deleteRuangan(ruangan_kode, userId);
};

const editRuanganByKode = async (ruangan_kode, ruanganData, userId) => {
    await getRuanganByKode(ruangan_kode, userId);
    return await editRuangan(ruangan_kode, ruanganData, userId);
};

module.exports = {
    getAllRuangan,
    getRuanganByKode,
    createRuangan,
    deleteRuanganByKode,
    editRuanganByKode
};
