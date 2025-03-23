
const express = require("express");
const { auth } = require("../middleware/auth");
const { getAllJadwalDosen } = require("./jadwal.service");

const router = express.Router();

router.get("/", auth, async (req, res) => {
    try {
        const jadwal = await getAllJadwalDosen();
        res.send(jadwal);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

module.exports = router;
