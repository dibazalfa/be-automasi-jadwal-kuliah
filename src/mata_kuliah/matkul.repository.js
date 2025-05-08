const prisma = require('../db');

const findMatkul = async (userId) => {
    return await prisma.mata_kuliah.findMany({
        where: { userId },
        include: { mata_kuliah_kelas: true }
    });
};

const findMatkulByKode = async (matkul_kode, userId) => {
    return await prisma.mata_kuliah.findFirst({
        where: { matkul_kode, userId },
        include: { mata_kuliah_kelas: true }
    });
};

const insertMatkul = async (matkulData, userId) => {
    return await prisma.mata_kuliah.create({
        data: {
            matkul_kode: matkulData.matkul_kode,
            matkul_nama: matkulData.matkul_nama,
            userId,
            mata_kuliah_kelas: {
                create: matkulData.kelas.map(item => ({
                    kelas_mk: item.kelas_mk,
                    nama_kelas: `${matkulData.matkul_nama} ${item.kelas_mk}`,
                    userId: userId
                }))
            }
        },
        include: {
            mata_kuliah_kelas: true,
        }
    });
};



const deleteMatkul = async (matkul_kode, userId) => {
    return await prisma.mata_kuliah.delete({
        where: {
            matkul_kode_userId: {
                matkul_kode,
                userId
            }
        }
    });
};

const editMatkul = async (matkul_kode, matkulData, userId) => {
    // Hapus kelas lama
    await prisma.mata_kuliah_kelas.deleteMany({ where: { matkul_kode } });

    return await prisma.mata_kuliah.update({
        where: {
            matkul_kode_userId: {
                matkul_kode,
                userId
            }
        },
        data: {
            matkul_nama: matkulData.matkul_nama,
            mata_kuliah_kelas: {
                create: matkulData.kelas.map(item => ({
                    kelas_mk: item.kelas_mk,
                    nama_kelas: `${matkulData.matkul_nama} ${item.kelas_mk}`
                }))
            }
        },
        include: {
            mata_kuliah_kelas: true,
        }
    });
};

module.exports = {
    findMatkul,
    findMatkulByKode,
    insertMatkul,
    deleteMatkul,
    editMatkul,
};
