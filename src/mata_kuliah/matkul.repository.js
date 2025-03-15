// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

const findMatkul = async () => {
    return await prisma.mata_kuliah.findMany({
        include: { mata_kuliah_kelas: true }
    });
};

const findMatkulByKode = async (matkul_kode) => {
    return await prisma.mata_kuliah.findUnique({
        where: { matkul_kode },
        include: { mata_kuliah_kelas: true }
    });
};

const insertMatkul = async (matkulData) => {
    return await prisma.mata_kuliah.create({
        data: {
            matkul_kode: matkulData.matkul_kode,
            matkul_nama: matkulData.matkul_nama,
            matkul_sem: matkulData.matkul_sem,
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

const deleteMatkul = async (matkul_kode) => {
    return await prisma.mata_kuliah.delete({
        where: { matkul_kode },
    });
};

const editMatkul = async (matkul_kode, matkulData) => {
    await prisma.mata_kuliah_kelas.deleteMany({ where: { matkul_kode } });

    return await prisma.mata_kuliah.update({
        where: { matkul_kode },
        data: {
            matkul_nama: matkulData.matkul_nama,
            matkul_sem: matkulData.matkul_sem,
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
