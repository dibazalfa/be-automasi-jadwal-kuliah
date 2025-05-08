const express = require("express");
const { auth } = require('../middleware/auth');
const roleAuth = require('../middleware/role');

const {
    getAllRuangan,
    getRuanganByKode,
    createRuangan,
    deleteRuanganByKode,
    editRuanganByKode
} = require("./ruangan.service");

const router = express.Router();

router.get("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const ruangan = await getAllRuangan(req.user.id);
        res.send(ruangan);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const ruangan = await getRuanganByKode(req.params.kode, req.user.id);
        res.send(ruangan);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const newRuangan = await createRuangan(req.body, req.user.id);
        res.send({
            data: newRuangan,
            message: "Data Ruangan berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        await deleteRuanganByKode(req.params.kode, req.user.id);
        res.send({ message: "Data Ruangan berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedRuangan = await editRuanganByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedRuangan,
            message: "Data Ruangan berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:kode", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedRuangan = await editRuanganByKode(req.params.kode, req.body, req.user.id);
        res.send({
            data: updatedRuangan,
            message: "Data Ruangan berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
