/*
  Warnings:

  - The `dosen_prioritas` column on the `dosen` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "Prioritas" AS ENUM ('PRIORITAS', 'NON_PRIORITAS');

-- AlterTable
ALTER TABLE "dosen" DROP COLUMN "dosen_prioritas",
ADD COLUMN     "dosen_prioritas" "Prioritas" NOT NULL DEFAULT 'NON_PRIORITAS';
