const prisma = require('../db');

const findDosen = async (userId) => {
    return await prisma.dosen.findMany({
        where: { userId },
        include: { jadwal_dosen: true }
    });
};

const findDosenByKode = async (dosen_kode, userId) => {
    return await prisma.dosen.findFirst({
        where: {
            dosen_kode,
            userId
        },
        include: { jadwal_dosen: true }
    });
};

const insertDosen = async (dosenData, userId) => {
    return await prisma.dosen.create({
        data: {
            dosen_kode: dosenData.dosen_kode,
            dosen_nama: dosenData.dosen_nama,
            dosen_prioritas: dosenData.dosen_prioritas,
            userId,
            jadwal_dosen: {
                create: dosenData.kesediaan.map(item => ({
                    dosen_sedia_hari: item.hari,
                    dosen_sedia_sesi: item.sesi,
                }))
            }
        },
        include: {
            jadwal_dosen: true,
        }
    });
};

const deleteDosen = async (dosen_kode, userId) => {
    return await prisma.dosen.delete({
        where: {
            dosen_kode_userId: {
                dosen_kode,
                userId
            }
        }
    });
};

const editDosen = async (dosen_kode, dosenData, userId) => {
    await prisma.jadwal_dosen.deleteMany({ where: { dosen_kode } });

    return await prisma.dosen.update({
        where: {
            dosen_kode_userId: {
                dosen_kode,
                userId
            }
        },
        data: {
            dosen_nama: dosenData.dosen_nama,
            dosen_prioritas: dosenData.dosen_prioritas,
            jadwal_dosen: {
                create: dosenData.kesediaan.map(item => ({
                    dosen_sedia_hari: item.hari,
                    dosen_sedia_sesi: item.sesi,
                }))
            }
        },
        include: {
            jadwal_dosen: true,
        }
    });
};

module.exports = {
    findDosen,
    findDosenByKode,
    insertDosen,
    deleteDosen,
    editDosen,
};
