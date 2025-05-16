/*
  Warnings:

  - The primary key for the `dosen` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `userId` to the `jadwal_dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `mata_kuliah_kelas_dosen` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "jadwal_dosen" DROP CONSTRAINT "jadwal_dosen_dosen_kode_fkey";

-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" DROP CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_fkey";

-- DropIndex
DROP INDEX "dosen_dosen_kode_userId_key";

-- AlterTable
ALTER TABLE "dosen" DROP CONSTRAINT "dosen_pkey",
ADD CONSTRAINT "dosen_pkey" PRIMARY KEY ("dosen_kode", "userId");

-- AlterTable
ALTER TABLE "jadwal_dosen" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "userId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "jadwal_dosen" ADD CONSTRAINT "jadwal_dosen_dosen_kode_userId_fkey" FOREIGN KEY ("dosen_kode", "userId") REFERENCES "dosen"("dosen_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_userId_fkey" FOREIGN KEY ("dosen_kode", "userId") REFERENCES "dosen"("dosen_kode", "userId") ON DELETE CASCADE ON UPDATE CASCADE;
