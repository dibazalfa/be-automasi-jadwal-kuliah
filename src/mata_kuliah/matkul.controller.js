// Layer untuk handle request dan response
// Handle validasi body
const express = require("express");
const { auth } = require('../middleware/auth');
const {
    getAllMatkul,
    getMatkulByKode,
    createMatkul,
    deleteMatkulByKode,
    editMatkulByKode
} = require("./matkul.service");

const router = express.Router();

router.get("/", auth, async (req, res) => {
    try {
        const matkul = await getAllMatkul();
        res.send(matkul);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", auth, async (req, res) => {
    try {
        const matkul = await getMatkulByKode(req.params.kode);
        res.send(matkul);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", auth, async (req, res) => {
    try {
        const newMatkul = await createMatkul(req.body);
        res.send({
            data: newMatkul,
            message: "Data Mata Kuliah berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", auth, async (req, res) => {
    try {
        await deleteMatkulByKode(req.params.kode);
        res.send({ message: "Data Mata Kuliah berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", auth, async (req, res) => {
    try {
        const updatedMatkul = await editMatkulByKode(req.params.kode, req.body);
        res.send({
            data: updatedMatkul,
            message: "Data Mata Kuliah berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", auth, async (req, res) => {
    try {
        const updatedMatkul = await editMatkulByKode(req.params.kode, req.body);
        res.send({
            data: updatedMatkul,
            message: "Data Mata Kuliah berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
