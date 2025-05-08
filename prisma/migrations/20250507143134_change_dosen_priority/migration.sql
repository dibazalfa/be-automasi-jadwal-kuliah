/*
  Warnings:

  - Changed the type of `dosen_prioritas` on the `dosen` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "dosen" DROP COLUMN "dosen_prioritas",
ADD COLUMN     "dosen_prioritas" INTEGER NOT NULL;

-- DropEnum
DROP TYPE "Prioritas";
