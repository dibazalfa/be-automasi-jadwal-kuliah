const express = require("express");
const { auth } = require('../middleware/auth');
const {
    getAllDosen,
    getDosenByKode,
    createDosen,
    deleteDosenByKode,
    editDosenByKode
} = require("./dosen.service");

const roleAuth = require('../middleware/role');

const router = express.Router();

router.get("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const dosen = await getAllDosen(req.user.id);
        res.send(dosen);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const dosen = await getDosenByKode(req.params.kode, req.user.id);
        res.send(dosen);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const newDosen = await createDosen(req.body, req.user.id);
        res.send({
            data: newDosen,
            message: "Data dosen berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        await deleteDosenByKode(req.params.kode, req.user.id);
        res.send({ message: "Data dosen berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedDosen = await editDosenByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedDosen,
            message: "Data dosen berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedDosen = await editDosenByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedDosen,
            message: "Data dosen berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
