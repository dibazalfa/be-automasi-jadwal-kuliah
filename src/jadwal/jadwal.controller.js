const express = require('express');
const { auth } = require('../middleware/auth');
const jadwalService = require('./jadwal.service');

const router = express.Router();

router.get('/', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.getAll();
        res.json(jadwal);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

router.get('/:id_jadwal', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.getById(req.params.id_jadwal);
        res.json(jadwal);
    } catch (error) {
        res.status(404).json({ error: error.message });
    }
});

router.post('/', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.create(req.body);
        res.status(201).json({
            data: jadwal,
            message: "Data Jadwal berhasil ditambahkan"
        });
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

router.put('/:id_jadwal', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.update(req.params.id_jadwal, req.body);
        res.json({
            data: jadwal,
            message: "Data Jadwal berhasil diubah"
        });
    } catch (error) {
        res.status(404).json({ error: error.message });
    }
});

router.delete('/:id_jadwal', auth, async (req, res) => {
    try {
        await jadwalService.delete(req.params.id_jadwal);
        res.json({ message: "Data Jadwal berhasil dihapus" });
    } catch (error) {
        res.status(404).json({ error: error.message });
    }
});

router.get('/mk-kelas/:id_mk_kelas', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.getByMkKelas(req.params.id_mk_kelas);
        res.json(jadwal);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

router.get('/ruangan/:ruangan_kode', auth, async (req, res) => {
    try {
        const jadwal = await jadwalService.getByRuangan(req.params.ruangan_kode);
        res.json(jadwal);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

router.get('/semester/:semester', auth, async (req, res) => {
    try {
        const semester = parseInt(req.params.semester);
        if (isNaN(semester)) {
            throw new Error('Semester must be a number');
        }
        const jadwal = await jadwalService.getBySemester(semester);
        res.json(jadwal);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

module.exports = router; 