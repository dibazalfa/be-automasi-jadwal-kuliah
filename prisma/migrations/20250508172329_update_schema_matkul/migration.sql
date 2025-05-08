-- AlterTable
ALTER TABLE "mata_kuliah_kelas_dosen" ADD COLUMN     "mata_kuliahMatkul_kode" VARCHAR(50);

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_mata_kuliahMatkul_kode_fkey" FOREIGN KEY ("mata_kuliahMatkul_kode") REFERENCES "mata_kuliah"("matkul_kode") ON DELETE SET NULL ON UPDATE CASCADE;
