const express = require("express");
const { auth } = require("../middleware/auth");
const { getAllJadwalDosen, generateJadwal } = require("./jadwal.service");

const router = express.Router();

// GET Semua Jadwal Dosen
router.get("/", auth, async (req, res) => {
    try {
        const jadwal = await getAllJadwalDosen();
        res.send(jadwal);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

// POST Generate Jadwal Otomatis
router.post("/generate", auth, async (req, res) => {
    try {
        const jadwal = await generateJadwal();
        res.send({
            message: "Jadwal berhasil digenerate!",
            data: jadwal
        });
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});


module.exports = router;