/*
  Warnings:

  - Added the required column `userId` to the `dosen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `jadwal_hindari` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `mata_kuliah` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `mata_kuliah_kelas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `ruangan` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "dosen" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "jadwal_hindari" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "mata_kuliah_kelas" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "ruangan" ADD COLUMN     "userId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "dosen" ADD CONSTRAINT "dosen_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah" ADD CONSTRAINT "mata_kuliah_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas" ADD CONSTRAINT "mata_kuliah_kelas_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal_hindari" ADD CONSTRAINT "jadwal_hindari_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ruangan" ADD CONSTRAINT "ruangan_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;
