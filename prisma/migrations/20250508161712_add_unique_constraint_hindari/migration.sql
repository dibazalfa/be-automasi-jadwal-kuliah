/*
  Warnings:

  - A unique constraint covering the columns `[id_hindari,userId]` on the table `jadwal_hindari` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "jadwal_hindari_id_hindari_userId_key" ON "jadwal_hindari"("id_hindari", "userId");
