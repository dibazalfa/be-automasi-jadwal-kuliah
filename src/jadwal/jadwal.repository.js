const prisma = require('../db');

const insertGeneratedJadwal = async (jadwalData) => {
    const validJadwalData = jadwalData.map(j => ({
        id_mk_kelas: j.id_mk_kelas,
        dosen_kode: j.dosen_kode,
        nama_kelas: j.nama_kelas,
        matkul_kode: j.matkul_kode,
        ruangan_kode: j.ruangan_kode,
        jadwal_hari: j.jadwal_hari,
        jadwal_sesi: j.jadwal_sesi
    }));

    await prisma.jadwal.createMany({
        data: validJadwalData,
        skipDuplicates: true
    });

    return await prisma.jadwal.findMany({
        where: {
            OR: validJadwalData.map(j => ({
                id_mk_kelas: j.id_mk_kelas,
                dosen_kode: j.dosen_kode,
                nama_kelas: j.nama_kelas,
                matkul_kode: j.matkul_kode,
                ruangan_kode: j.ruangan_kode,
                jadwal_hari: j.jadwal_hari,
                jadwal_sesi: j.jadwal_sesi
            }))
        }
    });
};
