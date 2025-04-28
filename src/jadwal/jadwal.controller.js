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

// POST /jadwal/simpan
router.post("/simpan", auth, async (req, res) => {
    try {
        const jadwalData = req.body.jadwal;
        if (!Array.isArray(jadwalData)) {
            return res.status(400).send({ error: "Invalid jadwal data format" });
        }

        const savedJadwal = await insertGeneratedJadwal(jadwalData);

        res.send({
            message: "Jadwal berhasil disimpan!",
            data: savedJadwal
        });
    } catch (err) {
        console.error('Error menyimpan jadwal:', err);
        res.status(500).send({ error: err.message });
    }
});


module.exports = router;