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

router.post('/simpan', auth, async (req, res) => {
    try {
        const { jadwal } = req.body;
        
        if (!Array.isArray(jadwal) || jadwal.length === 0) {
            return res.status(400).json({ error: 'Data jadwal tidak valid' });
        }

        // Process each schedule entry
        const savedSchedules = [];
        for (const entry of jadwal) {
            try {
                const scheduleData = {
                    id_mk_kelas: entry.id_mk_kelas,
                    ruangan_kode: entry.ruangan_kode,
                    jadwal_hari: entry.jadwal_hari,
                    jadwal_sesi: entry.jadwal_sesi,
                    jadwal_smt: entry.jadwal_smt || [1, 2] // Default to [1,2] if not specified
                };

                const savedSchedule = await jadwalService.create(scheduleData);
                savedSchedules.push(savedSchedule);
            } catch (error) {
                console.error(`Error saving schedule for ${entry.nama_kelas}:`, error);
                // Continue with next entry even if one fails
            }
        }

        res.status(201).json({
            message: `Berhasil menyimpan ${savedSchedules.length} dari ${jadwal.length} jadwal`,
            data: savedSchedules
        });

    } catch (error) {
        console.error('Error saving schedules:', error);
        res.status(500).json({ error: error.message });
    }
});

// Helper untuk mempersiapkan data sebelum disimpan
const prepareJadwalForSaving = () => {
  return jadwalGenerated.value.map(item => {
    // Find the matching course from matchingList
    const matchingCourse = matchingList.value.find(match => 
      match.kelas.nama_kelas === item.kelas
    );

    if (!matchingCourse) {
      console.warn(`No matching course found for ${item.kelas}`);
      return null;
    }

    return {
      id_mk_kelas: matchingCourse.kelas.id_mk_kelas,
      ruangan_kode: item.ruangan,
      jadwal_hari: item.hari,
      jadwal_sesi: item.sesi,
      jadwal_smt: matchingCourse.kelas.mk_kelas_sem || [1, 2]
    };
  }).filter(item => item !== null); // Remove any null entries
};

module.exports = router; 