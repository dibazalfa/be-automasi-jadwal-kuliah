/*
  Warnings:

  - You are about to drop the column `createdAt` on the `dosen` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `dosen` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `jadwal` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `jadwal` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `jadwal_dosen` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `jadwal_dosen` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `jadwal_hindari` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `jadwal_hindari` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `mata_kuliah` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `mata_kuliah` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `mata_kuliah_kelas` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `mata_kuliah_kelas` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `mata_kuliah_kelas_dosen` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `mata_kuliah_kelas_dosen` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `ruangan` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `ruangan` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `user` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "dosen" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "jadwal" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "jadwal_smt" INTEGER[];

-- AlterTable
ALTER TABLE "jadwal_dosen" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "jadwal_hindari" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "mata_kuliah" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "ruangan" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "user" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";
