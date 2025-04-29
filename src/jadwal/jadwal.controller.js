const jadwalService = require('./jadwal.service');

class JadwalController {
    async getAll(req, res) {
        try {
            const jadwal = await jadwalService.getAll();
            res.json(jadwal);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }

    async getById(req, res) {
        try {
            const jadwal = await jadwalService.getById(req.params.id_jadwal);
            res.json(jadwal);
        } catch (error) {
            res.status(404).json({ error: error.message });
        }
    }

    async create(req, res) {
        try {
            const jadwal = await jadwalService.create(req.body);
            res.status(201).json(jadwal);
        } catch (error) {
            res.status(400).json({ error: error.message });
        }
    }

    async update(req, res) {
        try {
            const jadwal = await jadwalService.update(req.params.id_jadwal, req.body);
            res.json(jadwal);
        } catch (error) {
            res.status(404).json({ error: error.message });
        }
    }

    async delete(req, res) {
        try {
            await jadwalService.delete(req.params.id_jadwal);
            res.status(204).send();
        } catch (error) {
            res.status(404).json({ error: error.message });
        }
    }

    async getByMkKelas(req, res) {
        try {
            const jadwal = await jadwalService.getByMkKelas(req.params.id_mk_kelas);
            res.json(jadwal);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }

    async getByRuangan(req, res) {
        try {
            const jadwal = await jadwalService.getByRuangan(req.params.ruangan_kode);
            res.json(jadwal);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }

    async getBySemester(req, res) {
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
    }
}

module.exports = new JadwalController();