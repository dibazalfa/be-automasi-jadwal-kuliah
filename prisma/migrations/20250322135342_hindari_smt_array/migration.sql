/*
  Warnings:

  - The `hindari_smt` column on the `jadwal_hindari` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "jadwal_hindari" DROP COLUMN "hindari_smt",
ADD COLUMN     "hindari_smt" INTEGER[];
