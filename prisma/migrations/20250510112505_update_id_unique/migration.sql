/*
  Warnings:

  - The primary key for the `dosen` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `mata_kuliah` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ruangan` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `ruangan_kode` on the `ruangan` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - Added the required column `userId` to the `jadwal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `jadwal_dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `mata_kuliah_kelas_dosen` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "jadwal" DROP CONSTRAINT "jadwal_ruangan_kode_fkey";

-- DropForeignKey
ALTER TABLE "jadwal_dosen" DROP CONSTRAINT "jadwal_dosen_dosen_kode_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas" DROP CONSTRAINT "mata_kuliah_kelas_matkul_kode_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" DROP CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_fkey";

-- DropIndex
DROP INDEX "dosen_dosen_kode_userId_key";

-- DropIndex
DROP INDEX "mata_kuliah_matkul_kode_userId_key";

-- DropIndex
DROP INDEX "mata_kuliah_kelas_id_mk_kelas_userId_key";

-- DropIndex
DROP INDEX "ruangan_ruangan_kode_userId_key";

-- AlterTable
ALTER TABLE "dosen" DROP CONSTRAINT "dosen_pkey",
ADD CONSTRAINT "dosen_pkey" PRIMARY KEY ("dosen_kode", "userId");

-- AlterTable
ALTER TABLE "jadwal" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "jadwal_dosen" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah" DROP CONSTRAINT "mata_kuliah_pkey",
ADD CONSTRAINT "mata_kuliah_pkey" PRIMARY KEY ("matkul_kode", "userId");

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "ruangan" DROP CONSTRAINT "ruangan_pkey",
ALTER COLUMN "ruangan_kode" SET DATA TYPE VARCHAR(50),
ADD CONSTRAINT "ruangan_pkey" PRIMARY KEY ("ruangan_kode", "userId");

-- AddForeignKey
ALTER TABLE "jadwal_dosen" ADD CONSTRAINT "jadwal_dosen_dosen_kode_userId_fkey" FOREIGN KEY ("dosen_kode", "userId") REFERENCES "dosen"("dosen_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas" ADD CONSTRAINT "mata_kuliah_kelas_matkul_kode_userId_fkey" FOREIGN KEY ("matkul_kode", "userId") REFERENCES "mata_kuliah"("matkul_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_userId_fkey" FOREIGN KEY ("dosen_kode", "userId") REFERENCES "dosen"("dosen_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal" ADD CONSTRAINT "jadwal_ruangan_kode_userId_fkey" FOREIGN KEY ("ruangan_kode", "userId") REFERENCES "ruangan"("ruangan_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;
