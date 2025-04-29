const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

class JadwalRepository {
    async getAll() {
        return await prisma.jadwal.findMany({
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async getById(id_jadwal) {
        return await prisma.jadwal.findUnique({
            where: { id_jadwal },
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async create(data) {
        return await prisma.jadwal.create({
            data,
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async update(id_jadwal, data) {
        return await prisma.jadwal.update({
            where: { id_jadwal },
            data,
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async delete(id_jadwal) {
        return await prisma.jadwal.delete({
            where: { id_jadwal }
        });
    }

    async getByMkKelas(id_mk_kelas) {
        return await prisma.jadwal.findMany({
            where: { id_mk_kelas },
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async getByRuangan(ruangan_kode) {
        return await prisma.jadwal.findMany({
            where: { ruangan_kode },
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }

    async getBySemester(semester) {
        return await prisma.jadwal.findMany({
            where: {
                jadwal_smt: {
                    has: semester
                }
            },
            include: {
                mata_kuliah_kelas: true,
                ruangan: true
            }
        });
    }
}

module.exports = new JadwalRepository();