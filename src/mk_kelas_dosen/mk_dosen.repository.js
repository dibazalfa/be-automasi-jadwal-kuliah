const prisma = require('../db');

const findMkDosen = async (userId) => {
    return await prisma.mata_kuliah_kelas_dosen.findMany({
        where: {
            mata_kuliah_kelas: { userId }
        },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

const findMkDosenById = async (id_mk_kelas_dosen, userId) => {
    return await prisma.mata_kuliah_kelas_dosen.findFirst({
        where: {
            id_mk_kelas_dosen,
            mata_kuliah_kelas: { userId }
        },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });
};

const insertMkDosen = async (mkDosenData, userId) => {
    const mkKelas = await prisma.mata_kuliah_kelas.findFirst({
        where: {
            nama_kelas: mkDosenData.nama_kelas,
            userId
        }
    });

    if (!mkKelas) {
        throw new Error(`Nama kelas '${mkDosenData.nama_kelas}' tidak ditemukan atau bukan milik Anda`);
    }

    const dosen = await prisma.dosen.findFirst({
        where: {
            dosen_kode: mkDosenData.dosen_kode,
            userId
        }
    });

    if (!dosen) {
        throw new Error(`Dosen '${mkDosenData.dosen_kode}' tidak ditemukan atau bukan milik Anda`);
    }

    return await prisma.mata_kuliah_kelas_dosen.create({
        data: {
            id_mk_kelas: mkKelas.id_mk_kelas,
            dosen_kode: mkDosenData.dosen_kode,
            userId: userId,
            mk_kelas_sem: mkDosenData.mk_kelas_sem,
            matkul_tipe: mkDosenData.matkul_tipe
        },
        include: {
            mata_kuliah_kelas: true,
            dosen: true
        }
    });


};

const deleteMkDosen = async (id_mk_kelas_dosen) => {
    return await prisma.mata_kuliah_kelas_dosen.delete({
        where: { id_mk_kelas_dosen }
    });
};

const editMkDosen = async (id_mk_kelas_dosen, mkDosenData, userId) => {
    const mkKelas = await prisma.mata_kuliah_kelas.findFirst({
        where: {
            id_mk_kelas: mkDosenData.id_mk_kelas,
            userId
        }
    });

    const dosen = await prisma.dosen.findFirst({
        where: {
            dosen_kode: mkDosenData.dosen_kode,
            userId
        }
    });

    if (!mkKelas || !dosen) {
        throw new Error('Dosen atau kelas tidak valid atau bukan milik Anda');
    }

    return await prisma.mata_kuliah_kelas_dosen.update({
        where: { id_mk_kelas_dosen },
        data: {
            id_mk_kelas: mkKelas.id_mk_kelas,
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
    editMkDosen
};
