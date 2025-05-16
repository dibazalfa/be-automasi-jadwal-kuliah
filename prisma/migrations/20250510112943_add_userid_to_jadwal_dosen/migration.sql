-- AddForeignKey
ALTER TABLE "jadwal_dosen" ADD CONSTRAINT "jadwal_dosen_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;
