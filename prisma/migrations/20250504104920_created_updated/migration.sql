/*
  Warnings:

  - You are about to drop the column `jadwal_smt` on the `jadwal` table. All the data in the column will be lost.
  - Added the required column `updatedAt` to the `dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `jadwal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `jadwal_dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `jadwal_hindari` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `mata_kuliah` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `mata_kuliah_kelas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `mata_kuliah_kelas_dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `ruangan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `user` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "dosen" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "jadwal" DROP COLUMN "jadwal_smt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "jadwal_dosen" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "jadwal_hindari" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah_kelas" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "ruangan" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "user" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;
