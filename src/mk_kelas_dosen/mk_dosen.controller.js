const express = require("express");
const {
    getAllMkDosen,
    getMkDosenById,
    createMkDosen,
    deleteMkDosenById,
    editMkDosenById
} = require("./mk_dosen.service");

const router = express.Router();

router.get("/", async (req, res) => {
    try {
        const mkDosen = await getAllMkDosen();
        res.send(mkDosen);
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});

router.get("/:id", async (req, res) => {
    try {
        const mkDosen = await getMkDosenById(req.params.id);
        res.send(mkDosen);
    } catch (err) {
        res.status(404).send({ error: err.message });
    }
});

router.post("/", async (req, res) => {
    try {
        const newMkDosen = await createMkDosen(req.body);
        res.send({
            data: newMkDosen,
            message: "Data Mata Kuliah dan Dosen Pengampu berhasil ditambahkan",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.delete("/:id", async (req, res) => {
    try {
        await deleteMkDosenById(req.params.id);
        res.send({ message: "Data Mata Kuliah dan Dosen Pengampu berhasil dihapus" });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

router.put("/:id", async (req, res) => {
    try {
        const updatedMkDosen = await editMkDosenById(req.params.id, req.body);
        res.send({
            data: updatedMkDosen,
            message: "Data Mata Kuliah dan Dosen Pengampu berhasil diubah",
        });
    } catch (err) {
        res.status(400).send({ error: err.message });
    }
});

module.exports = router;
