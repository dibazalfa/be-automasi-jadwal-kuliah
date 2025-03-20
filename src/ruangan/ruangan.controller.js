// Layer untuk handle request dan response
// Handle valkodeasi body
const express = require("express");
const {
    getAllRuangan,
    getRuanganByKode,
    createRuangan,
    deleteRuanganByKode,
    editRuanganByKode
} = require("./ruangan.service");

const router = express.Router();

router.get("/", async (req, res) => {
    try {
        const ruangan = await getAllRuangan();
        res.send(ruangan);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", async (req, res) => {
    try {
        const ruangan = await getRuanganByKode(req.params.kode);
        res.send(ruangan);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", async (req, res) => {
    try {
        const newRuangan = await createRuangan(req.body);
        res.send({
            data: newRuangan,
            message: "Data Ruangan berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", async (req, res) => {
    try {
        await deleteRuanganByKode(req.params.kode);
        res.send({ message: "Data Ruangan berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", async (req, res) => {
    try {
        const updatedRuangan = await editRuanganByKode(req.params.kode, req.body);
        res.send({
            data: updatedRuangan,
            message: "Data Ruangan berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", async (req, res) => {
    try {
        const updatedRuangan = await editRuanganByKode(req.params.kode, req.body);
        res.send({
            data: updatedRuangan,
            message: "Data Ruangan berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
