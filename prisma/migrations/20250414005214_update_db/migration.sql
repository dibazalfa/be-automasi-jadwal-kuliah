/*
  Warnings:

  - You are about to drop the column `matkul_sem` on the `mata_kuliah` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "mata_kuliah" DROP COLUMN "matkul_sem";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "mk_kelas_sem" INTEGER[];
