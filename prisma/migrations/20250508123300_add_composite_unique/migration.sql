/*
  Warnings:

  - A unique constraint covering the columns `[dosen_kode,userId]` on the table `dosen` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[matkul_kode,userId]` on the table `mata_kuliah` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id_mk_kelas,userId]` on the table `mata_kuliah_kelas` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[ruangan_kode,userId]` on the table `ruangan` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "dosen_dosen_kode_userId_key" ON "dosen"("dosen_kode", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "mata_kuliah_matkul_kode_userId_key" ON "mata_kuliah"("matkul_kode", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "mata_kuliah_kelas_id_mk_kelas_userId_key" ON "mata_kuliah_kelas"("id_mk_kelas", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "ruangan_ruangan_kode_userId_key" ON "ruangan"("ruangan_kode", "userId");
