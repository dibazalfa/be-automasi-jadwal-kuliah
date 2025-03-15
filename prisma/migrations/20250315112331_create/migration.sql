-- CreateEnum
CREATE TYPE "Hari" AS ENUM ('SENIN', 'SELASA', 'RABU', 'KAMIS', 'JUMAT');

-- CreateEnum
CREATE TYPE "Sesi" AS ENUM ('SATU', 'DUA', 'TIGA');

-- CreateEnum
CREATE TYPE "Kelas" AS ENUM ('A', 'B');

-- CreateTable
CREATE TABLE "dosen" (
    "dosen_kode" VARCHAR(50) NOT NULL,
    "dosen_nama" VARCHAR(255) NOT NULL,
    "dosen_level" INTEGER NOT NULL,

    CONSTRAINT "dosen_pkey" PRIMARY KEY ("dosen_kode")
);

-- CreateTable
CREATE TABLE "jadwal_dosen" (
    "id_jadwal_dosen" TEXT NOT NULL,
    "dosen_kode" VARCHAR(50) NOT NULL,
    "dosen_sedia_hari" "Hari" NOT NULL,
    "dosen_sedia_sesi" "Sesi" NOT NULL,

    CONSTRAINT "jadwal_dosen_pkey" PRIMARY KEY ("id_jadwal_dosen")
);

-- CreateTable
CREATE TABLE "mata_kuliah" (
    "matkul_kode" VARCHAR(50) NOT NULL,
    "matkul_nama" VARCHAR(255) NOT NULL,
    "matkul_sem" INTEGER NOT NULL,

    CONSTRAINT "mata_kuliah_pkey" PRIMARY KEY ("matkul_kode")
);

-- CreateTable
CREATE TABLE "mata_kuliah_kelas" (
    "id_mk_kelas" TEXT NOT NULL,
    "matkul_kode" VARCHAR(50) NOT NULL,
    "kelas_mk" "Kelas" NOT NULL,

    CONSTRAINT "mata_kuliah_kelas_pkey" PRIMARY KEY ("id_mk_kelas")
);

-- CreateTable
CREATE TABLE "mata_kuliah_kelas_dosen" (
    "id_mk_kelas_dosen" TEXT NOT NULL,
    "id_mk_kelas" TEXT NOT NULL,
    "dosen_kode" VARCHAR(50) NOT NULL,

    CONSTRAINT "mata_kuliah_kelas_dosen_pkey" PRIMARY KEY ("id_mk_kelas_dosen")
);

-- CreateTable
CREATE TABLE "jadwal_hindari" (
    "id_hindari" TEXT NOT NULL,
    "hindari_agenda" VARCHAR(255) NOT NULL,
    "hindari_hari" "Hari" NOT NULL,
    "hindari_sesi" "Sesi" NOT NULL,

    CONSTRAINT "jadwal_hindari_pkey" PRIMARY KEY ("id_hindari")
);

-- CreateTable
CREATE TABLE "ruangan" (
    "ruangan_kode" TEXT NOT NULL,
    "ruangan_kapasitas" INTEGER NOT NULL,

    CONSTRAINT "ruangan_pkey" PRIMARY KEY ("ruangan_kode")
);

-- CreateTable
CREATE TABLE "jadwal" (
    "id_jadwal" TEXT NOT NULL,
    "id_mk_kelas" TEXT NOT NULL,
    "ruangan_kode" TEXT NOT NULL,
    "jadwal_hari" "Hari" NOT NULL,
    "jadwal_sesi" "Sesi" NOT NULL,

    CONSTRAINT "jadwal_pkey" PRIMARY KEY ("id_jadwal")
);

-- AddForeignKey
ALTER TABLE "jadwal_dosen" ADD CONSTRAINT "jadwal_dosen_dosen_kode_fkey" FOREIGN KEY ("dosen_kode") REFERENCES "dosen"("dosen_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas" ADD CONSTRAINT "mata_kuliah_kelas_matkul_kode_fkey" FOREIGN KEY ("matkul_kode") REFERENCES "mata_kuliah"("matkul_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_id_mk_kelas_fkey" FOREIGN KEY ("id_mk_kelas") REFERENCES "mata_kuliah_kelas"("id_mk_kelas") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mata_kuliah_kelas_dosen" ADD CONSTRAINT "mata_kuliah_kelas_dosen_dosen_kode_fkey" FOREIGN KEY ("dosen_kode") REFERENCES "dosen"("dosen_kode") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal" ADD CONSTRAINT "jadwal_id_mk_kelas_fkey" FOREIGN KEY ("id_mk_kelas") REFERENCES "mata_kuliah_kelas"("id_mk_kelas") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "jadwal" ADD CONSTRAINT "jadwal_ruangan_kode_fkey" FOREIGN KEY ("ruangan_kode") REFERENCES "ruangan"("ruangan_kode") ON DELETE CASCADE ON UPDATE CASCADE;
