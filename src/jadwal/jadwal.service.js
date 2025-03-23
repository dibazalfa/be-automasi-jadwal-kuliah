const { findJadwalDosenWithKelas, findJadwalHindari } = require("./jadwal.repository");

// Fungsi untuk mendapatkan semua jadwal dosen
const getAllJadwalDosen = async () => {
    return await findJadwalDosenWithKelas();
};

// Fungsi untuk generate jadwal otomatis dengan backtracking
const generateJadwal = async () => {
    const dosenJadwal = await findJadwalDosenWithKelas();
    const jadwalHindari = await findJadwalHindari();

    let jadwalFinal = [];
    let usedSlots = {}; // { "HARI_SESI": dosen_kode }
    let assignedClasses = {}; // { "matkul_kode_nama_kelas": true }

    const isValid = (jadwal) => {
        const { dosen_sedia_hari, dosen_sedia_sesi } = jadwal;
        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;

        // Cek apakah slot ini sudah digunakan oleh dosen lain
        if (usedSlots[slotKey]) return false;

        // Cek apakah jadwal ini bertabrakan dengan jadwal yang harus dihindari
        const isAvoided = jadwalHindari.some(jh => 
            jh.hindari_hari === dosen_sedia_hari && 
            jh.hindari_sesi === dosen_sedia_sesi
        );
        if (isAvoided) return false;

        return true;
    };

    dosenJadwal.forEach((jadwal) => {
        const { dosen_kode, nama_kelas, matkul_kode, dosen_sedia_hari, dosen_sedia_sesi } = jadwal;
        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;
        const classKey = `${matkul_kode}_${nama_kelas}`;

        if (!assignedClasses[classKey] && isValid(jadwal)) {
            // Masukkan ke jadwal final
            jadwalFinal.push({
                dosen_kode,
                nama_kelas,
                matkul_kode,
                hari: dosen_sedia_hari,
                sesi: dosen_sedia_sesi
            });

            // Tandai slot dan kelas sudah dipakai
            usedSlots[slotKey] = true;
            assignedClasses[classKey] = true;
        }
    });

    return jadwalFinal;
};

module.exports = {
    getAllJadwalDosen,
    generateJadwal
};
