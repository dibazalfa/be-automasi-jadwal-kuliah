/*
  Warnings:

  - The primary key for the `mata_kuliah_kelas` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "jadwal" DROP CONSTRAINT "jadwal_id_mk_kelas_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" DROP CONSTRAINT "mata_kuliah_kelas_dosen_id_mk_kelas_fkey";

-- DropIndex
DROP INDEX "mata_kuliah_kelas_id_mk_kelas_userId_key";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas" DROP CONSTRAINT "mata_kuliah_kelas_pkey",
ADD CONSTRAINT "mata_kuliah_kelas_pkey" PRIMARY KEY ("id_mk_kelas", "userId");

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_id_mk_kelas_userId_fkey" FOREIGN KEY ("id_mk_kelas", "userId") REFERENCES "mata_kuliah_kelas"("id_mk_kelas", "userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal" ADD CONSTRAINT "jadwal_id_mk_kelas_userId_fkey" FOREIGN KEY ("id_mk_kelas", "userId") REFERENCES "mata_kuliah_kelas"("id_mk_kelas", "userId") ON DELETE CASCADE ON UPDATE CASCADE;
