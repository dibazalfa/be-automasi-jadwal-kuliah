/*
  Warnings:

  - Added the required column `nama_kelas` to the `mata_kuliah_kelas` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "mata_kuliah_kelas" ADD COLUMN     "nama_kelas" VARCHAR(50) NOT NULL;
