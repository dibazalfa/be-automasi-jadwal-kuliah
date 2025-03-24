const { findJadwalDosenWithKelas, findJadwalHindari, insertGeneratedJadwal, deleteAllJadwal } = require("./jadwal.repository");

const getAllJadwalDosen = async () => {
    return await findJadwalDosenWithKelas();
};

const generateJadwal = async () => {
    await deleteAllJadwal();

    const dosenJadwal = await findJadwalDosenWithKelas();
    const jadwalHindari = await findJadwalHindari();
    
    let jadwalFinal = [];
    let usedSlots = new Set();
    let assignedClasses = new Set();

    const isValid = (jadwal) => {
        const { dosen_sedia_hari, dosen_sedia_sesi } = jadwal;
        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;

        if (usedSlots.has(slotKey)) return false;

        const isAvoided = jadwalHindari.some(jh =>
            jh.hindari_hari === dosen_sedia_hari &&
            jh.hindari_sesi === dosen_sedia_sesi
        );
        if (isAvoided) return false;

        return true;
    };

    const backtrack = (index) => {
        if (index === dosenJadwal.length) return true;
        
        let jadwal = dosenJadwal[index];
        const { id_mk_kelas, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi, matkul_kode, nama_kelas } = jadwal;
        const slotKey = `${dosen_sedia_hari}_${dosen_sedia_sesi}`;
        const classKey = `${matkul_kode}_${nama_kelas}`;

        if (!assignedClasses.has(classKey) && isValid(jadwal)) {
            jadwalFinal.push({
                id_mk_kelas: id_mk_kelas,
                dosen_kode: dosen_kode,
                nama_kelas: nama_kelas,
                matkul_kode: matkul_kode,
                ruangan_kode: "704",
                jadwal_hari: dosen_sedia_hari,
                jadwal_sesi: dosen_sedia_sesi
            });

            usedSlots.add(slotKey);
            assignedClasses.add(classKey);

            if (backtrack(index + 1)) return true;

            jadwalFinal.pop();
            usedSlots.delete(slotKey);
            assignedClasses.delete(classKey);
        }

        return backtrack(index + 1);
    };

    backtrack(0);

    // save ke db n ambil data termasuk id_jadwal
    const savedJadwal = await insertGeneratedJadwal(jadwalFinal);

    return savedJadwal;
};

module.exports = {
    getAllJadwalDosen,
    generateJadwal
};