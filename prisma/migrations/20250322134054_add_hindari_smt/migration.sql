/*
  Warnings:

  - Added the required column `hindari_smt` to the `jadwal_hindari` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "jadwal_hindari" ADD COLUMN     "hindari_smt" INTEGER NOT NULL;
