const express = require("express");
const { auth } = require('../middleware/auth');
const roleAuth = require('../middleware/role');

const {
    getAllMatkul,
    getMatkulByKode,
    createMatkul,
    deleteMatkulByKode,
    editMatkulByKode
} = require("./matkul.service");

const router = express.Router();

router.get("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const matkul = await getAllMatkul(req.user.id);
        res.send(matkul);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const matkul = await getMatkulByKode(req.params.kode, req.user.id);
        res.send(matkul);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const newMatkul = await createMatkul(req.body, req.user.id);
        res.send({
            data: newMatkul,
            message: "Data Mata Kuliah berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        await deleteMatkulByKode(req.params.kode, req.user.id);
        res.send({ message: "Data Mata Kuliah berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedMatkul = await editMatkulByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedMatkul,
            message: "Data Mata Kuliah berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedMatkul = await editMatkulByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedMatkul,
            message: "Data Mata Kuliah berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
