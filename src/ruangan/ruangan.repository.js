// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

const findRuangan = async () => {
    return await prisma.ruangan.findMany();
};

const findRuanganByKode = async (ruangan_kode) => {
    return await prisma.ruangan.findUnique({
        where: { ruangan_kode },
    });
};

const insertRuangan = async (ruanganData) => {
    return await prisma.ruangan.create({
        data: {
            ruangan_kode: ruanganData.ruangan_kode,
            ruangan_kapasitas: ruanganData.ruangan_kapasitas,
        },
    });
};

const deleteRuangan = async (ruangan_kode) => {
    return await prisma.ruangan.delete({
        where: { ruangan_kode },
    });
};

const editRuangan = async (ruangan_kode, ruanganData) => {
    return await prisma.ruangan.update({
        where: { ruangan_kode },
        data: {
            ruangan_kapasitas: ruanganData.ruangan_kapasitas,
        },
    });
};

module.exports = {
    findRuangan,
    findRuanganByKode,
    insertRuangan,
    deleteRuangan,
    editRuangan,
};
