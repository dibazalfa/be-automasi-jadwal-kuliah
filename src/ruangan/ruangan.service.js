// Service layer berujuan untuk handle business logic
// Kenapa dipisah? Supaya tanggung jawabnya ter-isolate dan functions-nya reusable

const { findRuangan, findRuanganByKode, insertRuangan, deleteRuangan, editRuangan } = require("./ruangan.repository");

const getAllRuangan = async () => {
return await findRuangan();
};

const getRuanganByKode = async (ruangan_kode) => {
const ruangan = await findRuanganByKode(ruangan_kode);
if (!ruangan) {
    throw new Error("Data Ruangan tidak ditemukan");
}
return ruangan;
};

const createRuangan = async (newRuanganData) => {
return await insertRuangan(newRuanganData);
};

const deleteRuanganByKode = async (ruangan_kode) => {
await getRuanganByKode(ruangan_kode);
return await deleteRuangan(ruangan_kode);
};

const editRuanganByKode = async (ruangan_kode, ruanganData) => {
await getRuanganByKode(ruangan_kode);
return await editRuangan(ruangan_kode, ruanganData);
};

module.exports = {
getAllRuangan,
getRuanganByKode,
createRuangan,
deleteRuanganByKode,
editRuanganByKode
};
