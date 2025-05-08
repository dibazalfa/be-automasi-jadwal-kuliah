-- DropForeignKey
ALTER TABLE "mata_kuliah" DROP CONSTRAINT "mata_kuliah_userId_fkey";

-- AddForeignKey
ALTER TABLE "mata_kuliah" ADD CONSTRAINT "mata_kuliah_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
