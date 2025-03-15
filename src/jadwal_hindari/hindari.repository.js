// Berkomunikasi dengan database
// Boleh pake ORM, boleh raw query
// Ganti ORM tinggal ganti ini

const prisma = require('../db');

const findHindari = async () => {
    return await prisma.jadwal_hindari.findMany();
};

const findHindariById = async (id_hindari) => {
    return await prisma.jadwal_hindari.findUnique({
        where: { id_hindari },
    });
};

const insertHindari = async (hindariData) => {
    return await prisma.jadwal_hindari.create({
        data: {
            hindari_agenda: hindariData.hindari_agenda,
            hindari_hari: hindariData.hindari_hari,
            hindari_sesi: hindariData.hindari_sesi,
        },
    });
};

const deleteHindari = async (id_hindari) => {
    return await prisma.jadwal_hindari.delete({
        where: { id_hindari },
    });
};

const editHindari = async (id_hindari, hindariData) => {
    return await prisma.jadwal_hindari.update({
        where: { id_hindari },
        data: {
            hindari_agenda: hindariData.hindari_agenda,
            hindari_hari: hindariData.hindari_hari,
            hindari_sesi: hindariData.hindari_sesi,
        },
    });
};

module.exports = {
    findHindari,
    findHindariById,
    insertHindari,
    deleteHindari,
    editHindari,
};
