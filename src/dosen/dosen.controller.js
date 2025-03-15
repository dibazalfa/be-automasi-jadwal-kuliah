// Layer untuk handle request dan response
// Handle validasi body
const express = require("express");
const {
    getAllDosen,
    getDosenByKode,
    createDosen,
    deleteDosenByKode,
    editDosenByKode
} = require("./dosen.service");

const router = express.Router();

router.get("/", async (req, res) => {
    try {
        const dosen = await getAllDosen();
        res.send(dosen);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", async (req, res) => {
    try {
        const dosen = await getDosenByKode(req.params.kode);
        res.send(dosen);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", async (req, res) => {
    try {
        const newDosen = await createDosen(req.body);
        res.send({
            data: newDosen,
            message: "Data dosen berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", async (req, res) => {
    try {
        await deleteDosenByKode(req.params.kode);
        res.send({ message: "Data dosen berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", async (req, res) => {
    try {
        const updatedDosen = await editDosenByKode(req.params.kode, req.body);
        res.send({
            data: updatedDosen,
            message: "Data dosen berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", async (req, res) => {
    try {
        const updatedDosen = await editDosenByKode(req.params.kode, req.body);
        res.send({
            data: updatedDosen,
            message: "Data dosen berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
