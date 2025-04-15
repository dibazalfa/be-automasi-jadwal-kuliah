/*
  Warnings:

  - You are about to drop the column `dosen_level` on the `dosen` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "dosen" DROP COLUMN "dosen_level",
ADD COLUMN     "dosen_prioritas" BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE "mata_kuliah" ALTER COLUMN "matkul_tipe" SET DEFAULT 'DEPARTEMEN';
