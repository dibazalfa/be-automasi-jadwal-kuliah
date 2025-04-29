const jadwalRepository = require('./jadwal.repository');

class JadwalService {
    async getAll() {
        return await jadwalRepository.getAll();
    }

    async getById(id_jadwal) {
        const jadwal = await jadwalRepository.getById(id_jadwal);
        if (!jadwal) {
            throw new Error('Jadwal not found');
        }
        return jadwal;
    }

    async create(data) {
        // Validate required fields
        if (!data.id_mk_kelas || !data.ruangan_kode || !data.jadwal_hari || !data.jadwal_sesi || !data.jadwal_smt) {
            throw new Error('All fields are required');
        }

        // Validate jadwal_smt is an array
        if (!Array.isArray(data.jadwal_smt)) {
            throw new Error('jadwal_smt must be an array');
        }

        return await jadwalRepository.create(data);
    }

    async update(id_jadwal, data) {
        const jadwal = await jadwalRepository.getById(id_jadwal);
        if (!jadwal) {
            throw new Error('Jadwal not found');
        }

        return await jadwalRepository.update(id_jadwal, data);
    }

    async delete(id_jadwal) {
        const jadwal = await jadwalRepository.getById(id_jadwal);
        if (!jadwal) {
            throw new Error('Jadwal not found');
        }

        return await jadwalRepository.delete(id_jadwal);
    }

    async getByMkKelas(id_mk_kelas) {
        return await jadwalRepository.getByMkKelas(id_mk_kelas);
    }

    async getByRuangan(ruangan_kode) {
        return await jadwalRepository.getByRuangan(ruangan_kode);
    }

    async getBySemester(semester) {
        return await jadwalRepository.getBySemester(semester);
    }
}

module.exports = new JadwalService(); 