// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

const findDosen = async () => {
    return await prisma.dosen.findMany({
        include: { jadwal_dosen: true }
    });
};

const findDosenByKode = async (dosen_kode) => {
    return await prisma.dosen.findUnique({
        where: { dosen_kode },
        include: { jadwal_dosen: true }
    });
};

const insertDosen = async (dosenData) => {
    return await prisma.dosen.create({
        data: {
            dosen_kode: dosenData.dosen_kode,
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

const deleteDosen = async (dosen_kode) => {
    return await prisma.dosen.delete({
        where: { dosen_kode },
    });
};

const editDosen = async (dosen_kode, dosenData) => {
    await prisma.jadwal_dosen.deleteMany({ where: { dosen_kode } }); // Hapus kesediaan lama

    return await prisma.dosen.update({
        where: { dosen_kode },
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
