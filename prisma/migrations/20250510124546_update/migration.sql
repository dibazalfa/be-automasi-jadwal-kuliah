/*
  Warnings:

  - The primary key for the `dosen` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `jadwal` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `jadwal_dosen` table. All the data in the column will be lost.
  - The primary key for the `mata_kuliah` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `mata_kuliah_kelas_dosen` table. All the data in the column will be lost.
  - The primary key for the `ruangan` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[dosen_kode,userId]` on the table `dosen` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matkul_kode,userId]` on the table `mata_kuliah` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[ruangan_kode,userId]` on the table `ruangan` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "jadwal" DROP CONSTRAINT "jadwal_ruangan_kode_userId_fkey";

-- DropForeignKey
ALTER TABLE "jadwal_dosen" DROP CONSTRAINT "jadwal_dosen_dosen_kode_userId_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas" DROP CONSTRAINT "mata_kuliah_kelas_matkul_kode_userId_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" DROP CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_userId_fkey";

-- AlterTable
ALTER TABLE "dosen" DROP CONSTRAINT "dosen_pkey",
ADD CONSTRAINT "dosen_pkey" PRIMARY KEY ("dosen_kode");

-- AlterTable
ALTER TABLE "jadwal" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "jadwal_dosen" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "mata_kuliah" DROP CONSTRAINT "mata_kuliah_pkey",
ADD CONSTRAINT "mata_kuliah_pkey" PRIMARY KEY ("matkul_kode");

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "ruangan" DROP CONSTRAINT "ruangan_pkey",
ALTER COLUMN "ruangan_kode" SET DATA TYPE TEXT,
ADD CONSTRAINT "ruangan_pkey" PRIMARY KEY ("ruangan_kode");

-- CreateIndex
CREATE UNIQUE INDEX "dosen_dosen_kode_userId_key" ON "dosen"("dosen_kode", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "mata_kuliah_matkul_kode_userId_key" ON "mata_kuliah"("matkul_kode", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "ruangan_ruangan_kode_userId_key" ON "ruangan"("ruangan_kode", "userId");

-- AddForeignKey
ALTER TABLE "jadwal_dosen" ADD CONSTRAINT "jadwal_dosen_dosen_kode_fkey" FOREIGN KEY ("dosen_kode") REFERENCES "dosen"("dosen_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas" ADD CONSTRAINT "mata_kuliah_kelas_matkul_kode_fkey" FOREIGN KEY ("matkul_kode") REFERENCES "mata_kuliah"("matkul_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_fkey" FOREIGN KEY ("dosen_kode") REFERENCES "dosen"("dosen_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal" ADD CONSTRAINT "jadwal_ruangan_kode_fkey" FOREIGN KEY ("ruangan_kode") REFERENCES "ruangan"("ruangan_kode") ON DELETE CASCADE ON UPDATE CASCADE;
