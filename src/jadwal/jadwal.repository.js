const prisma = require('../db');

const findJadwalDosenWithKelas = async () => {
    return await prisma.$queryRaw`
        SELECT 
            mkd.id_mk_kelas_dosen,
            mkd.dosen_kode,
            d.dosen_nama,
            mkk.id_mk_kelas,
            mkk.nama_kelas,
            mkk.matkul_kode,
            jd.id_jadwal_dosen,
            jd.dosen_sedia_hari,
            jd.dosen_sedia_sesi
        FROM mata_kuliah_kelas_dosen mkd
        JOIN dosen d ON mkd.dosen_kode = d.dosen_kode
        JOIN mata_kuliah_kelas mkk ON mkd.id_mk_kelas = mkk.id_mk_kelas
        JOIN jadwal_dosen jd ON mkd.dosen_kode = jd.dosen_kode
    `;
};

const findJadwalHindari = async () => {
    return await prisma.jadwal_hindari.findMany();
};

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

    // ngeretrieve id_jadwal
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

const deleteAllJadwal = async () => {
    return await prisma.jadwal.deleteMany();
};


module.exports = {
    findJadwalDosenWithKelas,
    findJadwalHindari,
    insertGeneratedJadwal,
    deleteAllJadwal
};
