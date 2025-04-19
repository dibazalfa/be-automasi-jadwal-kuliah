const prisma = require('../db');

const findMkDosen = async () => {
    return await prisma.mata_kuliah_kelas_dosen.findMany({
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

const findMkDosenById = async (id_mk_kelas_dosen) => {
    return await prisma.mata_kuliah_kelas_dosen.findUnique({
        where: { id_mk_kelas_dosen },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

const insertMkDosen = async (mkDosenData) => {
    const mkKelas = await prisma.mata_kuliah_kelas.findFirst({
        where: { nama_kelas: mkDosenData.nama_kelas }
    });

    if (!mkKelas) {
        throw new Error(`Nama kelas '${mkDosenData.nama_kelas}' tidak ditemukan`);
    }

    return await prisma.mata_kuliah_kelas_dosen.create({
        data: {
            id_mk_kelas: mkKelas.id_mk_kelas,
            dosen_kode: mkDosenData.dosen_kode,
            mk_kelas_sem: mkDosenData.mk_kelas_sem,
            matkul_tipe: mkDosenData.matkul_tipe,
        },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

const deleteMkDosen = async (id_mk_kelas_dosen) => {
    return await prisma.mata_kuliah_kelas_dosen.delete({
        where: { id_mk_kelas_dosen },
    });
};

const editMkDosen = async (id_mk_kelas_dosen, mkDosenData) => {
    return await prisma.mata_kuliah_kelas_dosen.update({
        where: { id_mk_kelas_dosen },
        data: {
            id_mk_kelas: mkDosenData.id_mk_kelas,
            dosen_kode: mkDosenData.dosen_kode,
            mk_kelas_sem: mkDosenData.mk_kelas_sem,
            matkul_tipe: mkDosenData.matkul_tipe
        },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

module.exports = {
    findMkDosen,
    findMkDosenById,
    insertMkDosen,
    deleteMkDosen,
    editMkDosen,
};
