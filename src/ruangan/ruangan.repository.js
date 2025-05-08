const prisma = require('../db');

const findRuangan = async (userId) => {
    return await prisma.ruangan.findMany({
        where: { userId }
    });
};

const findRuanganByKode = async (ruangan_kode, userId) => {
    return await prisma.ruangan.findFirst({
        where: {
            ruangan_kode,
            userId
        }
    });
};

const insertRuangan = async (ruanganData, userId) => {
    return await prisma.ruangan.create({
        data: {
            ruangan_kode: ruanganData.ruangan_kode,
            ruangan_kapasitas: ruanganData.ruangan_kapasitas,
            userId
        }
    });
};

const deleteRuangan = async (ruangan_kode, userId) => {
    return await prisma.ruangan.delete({
        where: {
            ruangan_kode_userId: {
                ruangan_kode,
                userId
            }
        }
    });
};

const editRuangan = async (ruangan_kode, ruanganData, userId) => {
    return await prisma.ruangan.update({
        where: {
            ruangan_kode_userId: {
                ruangan_kode,
                userId
            }
        },
        data: {
            ruangan_kapasitas: ruanganData.ruangan_kapasitas
        }
    });
};

module.exports = {
    findRuangan,
    findRuanganByKode,
    insertRuangan,
    deleteRuangan,
    editRuangan,
};
