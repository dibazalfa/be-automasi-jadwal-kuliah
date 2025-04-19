/*
  Warnings:

  - You are about to drop the column `matkul_tipe` on the `mata_kuliah` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "mata_kuliah" DROP COLUMN "matkul_tipe";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "matkul_tipe" "TipeMK" NOT NULL DEFAULT 'DEPARTEMEN';
