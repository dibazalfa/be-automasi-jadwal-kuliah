const express = require("express");
const { auth } = require('../middleware/auth');
const roleAuth = require('../middleware/role');
const {
    getAllHindari,
    getHindariById,
    createHindari,
    deleteHindariById,
    editHindariById
} = require("./hindari.service");

const router = express.Router();

router.get("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const hindari = await getAllHindari(req.user.id);
        res.send(hindari);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:id", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const hindari = await getHindariById(req.params.id, req.user.id);
        res.send(hindari);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const newHindari = await createHindari(req.body, req.user.id);
        res.send({
            data: newHindari,
            message: "Data Jadwal Hindari berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:id", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        await deleteHindariById(req.params.id, req.user.id);
        res.send({ message: "Data Jadwal Hindari berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:id", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedHindari = await editHindariById(req.params.id, req.body, req.user.id);
        res.send({
            data: updatedHindari,
            message: "Data Jadwal Hindari berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:id", auth, roleAuth(['ADMINISTRATOR', 'OPERATOR']), async (req, res) => {
    try {
        const updatedHindari = await editHindariById(req.params.id, req.body, req.user.id);
        res.send({
            data: updatedHindari,
            message: "Data Jadwal Hindari berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
