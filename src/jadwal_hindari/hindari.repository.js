const prisma = require('../db');

const findHindari = async (userId) => {
    return await prisma.jadwal_hindari.findMany({
        where: { userId }
    });
};

const findHindariById = async (id_hindari, userId) => {
    return await prisma.jadwal_hindari.findFirst({
        where: {
            id_hindari,
            userId
        }
    });
};

const insertHindari = async (hindariData, userId) => {
    return await prisma.jadwal_hindari.create({
        data: {
            hindari_agenda: hindariData.hindari_agenda,
            hindari_hari: hindariData.hindari_hari,
            hindari_sesi: hindariData.hindari_sesi,
            hindari_smt: hindariData.hindari_smt,
            userId
        }
    });
};

const deleteHindari = async (id_hindari, userId) => {
    return await prisma.jadwal_hindari.delete({
        where: {
            id_hindari_userId: {
                id_hindari,
                userId
            }
        }
    });
};

const editHindari = async (id_hindari, hindariData, userId) => {
    return await prisma.jadwal_hindari.update({
        where: {
            id_hindari_userId: {
                id_hindari,
                userId
            }
        },
        data: {
            hindari_agenda: hindariData.hindari_agenda,
            hindari_hari: hindariData.hindari_hari,
            hindari_sesi: hindariData.hindari_sesi,
            hindari_smt: hindariData.hindari_smt,
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
