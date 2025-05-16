/*
  Warnings:

  - You are about to drop the column `mata_kuliahMatkul_kode` on the `mata_kuliah_kelas_dosen` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "mata_kuliah" DROP CONSTRAINT "mata_kuliah_userId_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" DROP CONSTRAINT "mata_kuliah_kelas_dosen_mata_kuliahMatkul_kode_fkey";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" DROP COLUMN "mata_kuliahMatkul_kode";

-- AddForeignKey
ALTER TABLE "mata_kuliah" ADD CONSTRAINT "mata_kuliah_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;
