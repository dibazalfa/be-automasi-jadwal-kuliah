
const prisma = require('../db');

const findJadwalDosenWithKelas = async () => {
    return await prisma.$queryRaw`
        SELECT 
            mkd.id_mk_kelas_dosen,
            mkd.dosen_kode,
            d.dosen_nama,
            mkk.nama_kelas,
            jd.id_jadwal_dosen,
            jd.dosen_sedia_hari,
            jd.dosen_sedia_sesi
        FROM mata_kuliah_kelas_dosen mkd
        JOIN dosen d ON mkd.dosen_kode = d.dosen_kode
        JOIN mata_kuliah_kelas mkk ON mkd.id_mk_kelas = mkk.id_mk_kelas
        JOIN jadwal_dosen jd ON mkd.dosen_kode = jd.dosen_kode
    `;
};

module.exports = {
    findJadwalDosenWithKelas
};

