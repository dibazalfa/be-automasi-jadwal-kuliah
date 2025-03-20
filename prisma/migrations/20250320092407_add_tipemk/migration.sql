/*
  Warnings:

  - Added the required column `matkul_tipe` to the `mata_kuliah` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "TipeMK" AS ENUM ('DEPARTEMEN', 'PENGAYAAN');

-- AlterEnum
-- This migration adds more than one value to an enum.
-- With PostgreSQL versions 11 and earlier, this is not possible
-- in a single migration. This can be worked around by creating
-- multiple migrations, each migration adding only one value to
-- the enum.


ALTER TYPE "Kelas" ADD VALUE 'C';
ALTER TYPE "Kelas" ADD VALUE 'D';

-- AlterTable
ALTER TABLE "mata_kuliah" ADD COLUMN     "matkul_tipe" "TipeMK" NOT NULL;
