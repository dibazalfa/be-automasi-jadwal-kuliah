
const prisma = require('../db');

const findJadwalDosenWithKelas = async () => {
    return await prisma.$queryRaw
        `
        SELECT 
            mkd.id_mk_kelas_dosen,
            mkd.dosen_kode,
            d.dosen_nama,
            mkk.id_mk_kelas, -- ← tambahkan ini!
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
    return await prisma.jadwal.createMany({
        data: jadwalData,
        skipDuplicates: true
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
