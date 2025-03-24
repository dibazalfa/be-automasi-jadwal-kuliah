/*
  Warnings:

  - Added the required column `dosen_kode` to the `jadwal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `matkul_kode` to the `jadwal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nama_kelas` to the `jadwal` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "jadwal" ADD COLUMN     "dosen_kode" VARCHAR(50) NOT NULL,
ADD COLUMN     "matkul_kode" VARCHAR(50) NOT NULL,
ADD COLUMN     "nama_kelas" VARCHAR(255) NOT NULL;
