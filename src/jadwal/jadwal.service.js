
const { findJadwalDosenWithKelas, findJadwalHindari, insertGeneratedJadwal, deleteAllJadwal } = require("./jadwal.repository");

const getAllJadwalDosen = async () => {
    return await findJadwalDosenWithKelas();
};

const generateJadwal = async () => {
    await deleteAllJadwal();

    const dosenJadwal = await findJadwalDosenWithKelas();
    const jadwalHindari = await findJadwalHindari();

    let jadwalFinal = [];
    let usedSlots = {};
    let assignedClasses = {};

    const isValid = (jadwal) => {
        const { dosen_sedia_hari, dosen_sedia_sesi } = jadwal;
        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;

        if (usedSlots[slotKey]) return false;

        const isAvoided = jadwalHindari.some(jh =>
            jh.hindari_hari === dosen_sedia_hari &&
            jh.hindari_sesi === dosen_sedia_sesi
        );
        if (isAvoided) return false;

        return true;
    };

    dosenJadwal.forEach((jadwal) => {
        const {
            id_mk_kelas_dosen,
            dosen_kode,
            nama_kelas,
            matkul_kode,
            id_mk_kelas,
            dosen_sedia_hari,
            dosen_sedia_sesi
        } = jadwal;

        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;
        const classKey = `${matkul_kode}_${nama_kelas}`;

        if (!assignedClasses[classKey] && isValid(jadwal)) {
            jadwalFinal.push({
                id_mk_kelas: id_mk_kelas,
                ruangan_kode: "704",
                jadwal_hari: dosen_sedia_hari,
                jadwal_sesi: dosen_sedia_sesi
            });

            usedSlots[slotKey] = true;
            assignedClasses[classKey] = true;
        }
    });

    await insertGeneratedJadwal(jadwalFinal);

    return jadwalFinal;
};

module.exports = {
    getAllJadwalDosen,
    generateJadwal
};
