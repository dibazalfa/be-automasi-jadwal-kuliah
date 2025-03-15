// Layer untuk handle request dan response
// Handle validasi body
const express = require("express");
const {
    getAllHindari,
    getHindariById,
    createHindari,
    deleteHindariById,
    editHindariById
} = require("./hindari.service");

const router = express.Router();

router.get("/", async (req, res) => {
    try {
        const hindari = await getAllHindari();
        res.send(hindari);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:id", async (req, res) => {
    try {
        const hindari = await getHindariById(req.params.id);
        res.send(hindari);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", async (req, res) => {
    try {
        const newHindari = await createHindari(req.body);
        res.send({
            data: newHindari,
            message: "Data Jadwal Hindari berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:id", async (req, res) => {
    try {
        await deleteHindariById(req.params.id);
        res.send({ message: "Data Jadwal Hindari berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:id", async (req, res) => {
    try {
        const updatedHindari = await editHindariById(req.params.id, req.body);
        res.send({
            data: updatedHindari,
            message: "Data Jadwal Hindari berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.patch("/:id", async (req, res) => {
    try {
        const updatedHindari = await editHindariById(req.params.id, req.body);
        res.send({
            data: updatedHindari,
            message: "Data Jadwal Hindari berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
