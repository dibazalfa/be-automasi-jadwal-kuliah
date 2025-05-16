-- DropForeignKey
ALTER TABLE "mata_kuliah_kelas" DROP CONSTRAINT "mata_kuliah_kelas_userId_fkey";

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas" ADD CONSTRAINT "mata_kuliah_kelas_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
