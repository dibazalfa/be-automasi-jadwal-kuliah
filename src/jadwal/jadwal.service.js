
const { findJadwalDosenWithKelas } = require("./jadwal.repository");

const getAllJadwalDosen = async () => {
    return await findJadwalDosenWithKelas();
};

module.exports = {
    getAllJadwalDosen
};
