--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('678bc163-f404-4217-8eb6-963841749937', '41a19488afa750ce1b34ee06fbd86cb052316325985f16fced5e9e528c3e61a9', '2025-05-05 02:43:54.07915+00', '20250504103737_old', NULL, NULL, '2025-05-05 02:43:54.075071+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e9958e68-dc4c-4742-89c3-18b98f965a92', 'b53a96115b6b8a794b05d573cc58f2603d03ec848e5deee5ce713095d245b3c8', '2025-05-05 02:43:54.026723+00', '20250315112331_create', NULL, NULL, '2025-05-05 02:43:54.008681+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0123cb6c-76a4-4abc-b690-45cb129d4c60', 'd6700544bf928874201613a27ec4b6e34f904ffddcd1c3f53c57da42b1498d16', '2025-05-05 02:43:54.031088+00', '20250315112535_add_admin', NULL, NULL, '2025-05-05 02:43:54.027334+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('936680c5-ae31-4e67-b350-1b2f0d838d5d', '4399551d3cd3b06610e0957025507e5e13921219d1beed3469b614eb21ebee27', '2025-05-05 02:43:54.03432+00', '20250315190501_update_nama_kelas_in_mata_kuliah_kelas', NULL, NULL, '2025-05-05 02:43:54.031714+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cd992ad3-518f-4d51-b1d2-85f8548c425a', 'de810620ea018c237ac7b63a11153bacc7543b675ee1b957f30a40bf7a80e193', '2025-05-05 02:43:54.03663+00', '20250315190841_update_nama_kelas', NULL, NULL, '2025-05-05 02:43:54.034905+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('6c6844a4-d5d3-4574-9b90-edc35ea06919', '2e9b685877aa49831e4119b21be180e9e5ba40565c666a2fe21b9e1cb6df7c14', '2025-05-05 02:43:54.039353+00', '20250320092407_add_tipemk', NULL, NULL, '2025-05-05 02:43:54.037141+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c0eec6ce-b493-4df9-9c7b-b849fe62d5f7', '1a1dcad70d09a96d5df80bd7445623ae2eaeb26f4e0b994f7745fa36c756f3a6', '2025-05-05 02:43:54.043631+00', '20250322134054_add_hindari_smt', NULL, NULL, '2025-05-05 02:43:54.039999+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('a2ae2708-a95e-4321-99c2-5a29ee5924c9', '1ed391c961aa0cd11df41da504828be9df0379444307c6fe41ca8f668b697910', '2025-05-05 02:43:54.047243+00', '20250322135342_hindari_smt_array', NULL, NULL, '2025-05-05 02:43:54.044507+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('db7cabbf-f530-492b-88f6-1de66d9fbcfe', '90986045d55cc7847413cddec25413dfe7e9e1a9377b61f5f4d2638999bd8c30', '2025-05-05 02:43:54.056015+00', '20250322145955_admin_to_user', NULL, NULL, '2025-05-05 02:43:54.04827+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8dd32458-6907-45bc-a78f-2c3bbe17f28c', '0226a1ad8d27fcaee0559876074e3b551e8c4a66bbe981fc13257531b1b3951b', '2025-05-05 02:43:54.059419+00', '20250414005214_update_db', NULL, NULL, '2025-05-05 02:43:54.056763+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('717d4db0-d85d-430d-9bb7-af29d3936ee3', 'e7b671573202bb072051fb626b22624503c3fb88379d3e663568991fb7c7d104', '2025-05-05 02:43:54.062496+00', '20250415104422_update_dosen', NULL, NULL, '2025-05-05 02:43:54.060091+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('8d6f5c8e-db2e-4fff-8b60-a2d16ded1ef1', '20bd5be4bac915dd6886176876c53c724eaf7f91f4a95a56f1f98777c1694910', '2025-05-05 02:43:54.065713+00', '20250415105004_update_dosen_prio', NULL, NULL, '2025-05-05 02:43:54.063125+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e72b3c5b-0b7b-4a54-a4d8-e3cb7d3a3ad3', 'ce54a9034457016588bf73eb9b6952d92f6364dafb1b898f83ba5455aa89a0c3', '2025-05-05 02:43:54.069666+00', '20250419045335_update_db_tipemk', NULL, NULL, '2025-05-05 02:43:54.066253+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c1ecfb42-aa1f-4b17-893c-70ac58cb13ec', 'aa1b02f24814c38baffd6ff4957e7c224e248654395ff8257ca05b466b4b69f4', '2025-05-05 02:43:54.074448+00', '20250504095251_add_created_updated_at', NULL, NULL, '2025-05-05 02:43:54.070307+00', 1);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('IZ', 'Irzal Ahmad Sabilla, S. Kom.,M.Kom', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('RR', 'Ridho Rahman Hariadi, S.Kom., M.Sc.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HG', 'Dr.tech.Ir. Raden Venantius Hari Ginardi, M.Sc', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('RW', 'Dr. Rizka Wakhidatus Sholikah, S. Kom', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('AI', 'Annisaa Sri Indrawanti, S. Kom., M. Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('FD', 'Fuad Dary Rosyadi, S.Kom., M.Kom.', 'NON_PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HF', 'Hafara Firdausi, S.Kom., M.Kom.', 'NON_PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('KG', 'Ir. Khakim Ghozali, M.MT', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('ED', 'Edwin Riksakomara, S.Kom., M.T.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HC', 'Dr. Ir. Henning Titi Ciptaningtyas, S.Kom, M.Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('AT', 'Dr. Ir. Aris Tjahyanto, M.Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HS', 'Hatma Suryotrisongko, S.Kom., M.Eng., Ph.D.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('MH', 'Ir. Muchammad Husni, M.Kom', 'PRIORITAS');


--
-- Data for Name: mata_kuliah; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234202', 'Arsitektur Enterprise');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234201', 'Sistem Operasi');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234504', 'Teknologi Smartcity');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234404', 'Big Data dan Data Lakehouse');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234401', 'Manajemen Insiden Keamanan Siber');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234403', 'Teknologi Komputasi Awan');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234702', 'Penulisan Ilmiah');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234203 ', 'Struktur Data dan Pemograman Berorientasi Objek');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234501', 'Kriptografi');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234406', 'Integrasi Sistem');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234402', 'Security Operations Center');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234405', 'Kecerdasan Artifisial dan Machine Learning');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234204', 'Sistem Basis Data');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234703', 'Manajemen Proyek');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234601', 'Interaksi Manusia dan Komputer');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234612', 'Teknologi Multimedia');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234814', 'Sistem Cerdas');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234602', 'Pengembangan Sistem/Aplikasi (Capstone Project)');


--
-- Data for Name: mata_kuliah_kelas; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('54b5f5da-efbf-4840-b5f0-ed56db3a8492', 'ET234202', 'A', 'Arsitektur Enterprise A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('39906ed0-6c39-42df-815c-883ad3e26f95', 'ET234202', 'B', 'Arsitektur Enterprise B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('416aa34f-4788-43e2-abf4-863c1713ef3c', 'ET234202', 'C', 'Arsitektur Enterprise C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('d1c29eac-b28b-4176-b9be-2aaa9a553ebf', 'ET234201', 'A', 'Sistem Operasi A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('7274dfda-3d81-4afd-bdde-887119ffe27e', 'ET234201', 'B', 'Sistem Operasi B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('62955dc8-d758-4dce-a949-c5340ca6c1ec', 'ET234201', 'C', 'Sistem Operasi C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('1a415c68-a058-420a-8d94-ee8f170778a4', 'ET234504', 'A', 'Teknologi Smartcity A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('275e2d9a-16b9-4988-8b5e-9a70063040ff', 'ET234404', 'A', 'Big Data dan Data Lakehouse A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('6c2c065d-1816-4878-938c-a2be54bb03ea', 'ET234404', 'B', 'Big Data dan Data Lakehouse B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('136e426a-b144-4f8c-b492-3a05f60ffc40', 'ET234401', 'A', 'Manajemen Insiden Keamanan Siber A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('bf289bf6-743a-4824-9298-e2a6733923c0', 'ET234401', 'B', 'Manajemen Insiden Keamanan Siber B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('a9a6b3f8-e6de-4b6c-bc0c-cad37c60ff97', 'ET234403', 'A', 'Teknologi Komputasi Awan A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('d4bb190a-70eb-4d7b-9b2a-7aeed66bbce3', 'ET234702', 'A', 'Penulisan Ilmiah A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('8dbd1855-16f9-4ee8-81ac-1fc0f37ee06d', 'ET234702', 'B', 'Penulisan Ilmiah B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('c94fe112-49df-408b-833f-61de28d6387d', 'ET234203 ', 'A', 'Struktur Data dan Pemograman Berorientasi Objek A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('5d6c0e41-fe88-4387-9677-fd376f3a8db4', 'ET234203 ', 'B', 'Struktur Data dan Pemograman Berorientasi Objek B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('562fb041-b2c8-4e14-9fc6-14c40680a755', 'ET234203 ', 'C', 'Struktur Data dan Pemograman Berorientasi Objek C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('b6fc4e91-3b6d-4ec9-b1aa-b50abf927230', 'ET234501', 'A', 'Kriptografi A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('9a004edc-5762-476d-8534-ecf51b4bf12a', 'ET234501', 'B', 'Kriptografi B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('b0db3051-4fd9-47e8-9891-e2364bb01e1d', 'ET234406', 'A', 'Integrasi Sistem A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e32b445c-120b-407c-9af6-ecd35ba7f707', 'ET234406', 'B', 'Integrasi Sistem B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('2bc59400-3824-4702-84bb-73f073e073a6', 'ET234402', 'A', 'Security Operations Center A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('10e6ad58-8541-4c86-9367-0706b4a63932', 'ET234402', 'B', 'Security Operations Center B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('529014a7-0250-45f4-bab5-449222d5c1b8', 'ET234402', 'C', 'Security Operations Center C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('97c35774-1e09-4650-85ec-25b0c6d13548', 'ET234405', 'A', 'Kecerdasan Artifisial dan Machine Learning A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('697b819e-06b0-4613-91a6-ef2a2f821904', 'ET234405', 'B', 'Kecerdasan Artifisial dan Machine Learning B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('0e860cca-9185-4cda-8800-76bce9a94ffb', 'ET234204', 'A', 'Sistem Basis Data A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e2214c18-6c1c-4360-87c7-0ab38714265e', 'ET234204', 'B', 'Sistem Basis Data B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('04691bd9-302f-4942-855d-e77d84841a74', 'ET234204', 'C', 'Sistem Basis Data C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('d7090827-8a09-4854-be1d-1aa98dabb191', 'ET234703', 'A', 'Manajemen Proyek A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e004dc27-6644-4f17-8a8c-7b7a1a49b9bb', 'ET234601', 'A', 'Interaksi Manusia dan Komputer A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('2da1634d-4039-4246-bc7b-505de0fb5ba1', 'ET234601', 'B', 'Interaksi Manusia dan Komputer B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('7e709ecc-cec4-4d98-ad49-07cdf25c9657', 'ET234601', 'C', 'Interaksi Manusia dan Komputer C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('3afcc55a-955b-438b-aa9c-d19dfe24bd24', 'ET234601', 'D', 'Interaksi Manusia dan Komputer D');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('79eb7c4f-610e-4ff7-b993-195dda6706b1', 'ET234612', 'A', 'Teknologi Multimedia A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('ef3a46e4-ed39-46fc-a9a4-8df2d7c5a64a', 'ET234612', 'B', 'Teknologi Multimedia B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('461e5c48-7577-4892-8561-3324d8913bd0', 'ET234814', 'A', 'Sistem Cerdas A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('476eba82-c326-4c71-ae09-575125ce9bbf', 'ET234602', 'A', 'Pengembangan Sistem/Aplikasi (Capstone Project) A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('312d282b-4580-4595-8ac0-cec4178814fe', 'ET234602', 'B', 'Pengembangan Sistem/Aplikasi (Capstone Project) B');


--
-- Data for Name: ruangan; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('702', 48);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('703', 55);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('704', 48);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('705', 48);


--
-- Data for Name: jadwal; Type: TABLE DATA; Schema: public; Owner: kepsten
--



--
-- Data for Name: jadwal_dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f12362c9-280b-40a6-831f-49a1d30e4dfa', 'IZ', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('77aff554-6913-4802-8b77-944601780ea8', 'IZ', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('02f2bda6-da4f-4c4a-86f5-ab7eebb89533', 'IZ', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('dfbfc7b4-3e17-49b6-a620-d1a287186eeb', 'IZ', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('dea2f602-ccaf-46e7-9697-d4497cf2c339', 'IZ', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('b9322ce8-9e1c-4c82-9eba-f1a11ffdf754', 'IZ', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('4b96d79b-860c-4fa1-bb12-05d8d7e54cf9', 'IZ', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('748ffb76-caa6-4951-afa1-ad0e7c757936', 'IZ', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('57e520ca-5b4c-40e2-8d4a-acb461088771', 'IZ', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('00e1bcf3-3620-492b-a49e-47b091342482', 'IZ', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('69ddeb0c-b190-4408-a608-fa3594ce98a8', 'IZ', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('5327ef10-19f9-4536-9c90-bb660480201a', 'IZ', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('928f9ee2-eba7-4d85-9ed8-fa0d954b573b', 'RR', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('55d5decb-bad1-449a-8e67-cd545d9e14f2', 'RR', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2c62f11e-9218-4c1a-8f7f-fc4339a2f8da', 'RR', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('bd2ef408-cf11-4ff2-b3f5-6765a2e34f28', 'RR', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('fa5d4169-0d26-49bc-a4c9-a7856e81a5b4', 'RR', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c7e82496-1d14-4907-b85e-c5ce47e150e7', 'HG', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('885d2507-3ccc-40fc-ab18-45e7c30a5543', 'HG', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('85cb0f0b-aaa1-4db7-801c-ec3aacb781f7', 'HG', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('95fd07f6-0366-4075-a56c-f413f75ae6e0', 'HG', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('3248a7b9-bc7d-4d07-976d-262337f22e26', 'HG', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('6a186905-8dbb-4c39-a284-083e11e32049', 'RW', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('41903086-a204-4585-a6d1-324dd50b4742', 'RW', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('3d8800df-c636-460a-879e-23f08b1deae6', 'RW', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('cbdbd309-54e1-408b-a06b-9b399bab20f0', 'RW', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('6e542aea-5269-4495-9a19-a2d8d3ead25f', 'RW', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a4cc2cdd-e619-43be-a91c-544f495ec36b', 'RW', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('ed5a315b-afb6-4669-bac0-8dae1349b432', 'RW', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('1fca4335-b46f-4cc9-87b0-0977f70d82cb', 'RW', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a2d62a7f-a4d5-4485-b6c8-93ad5b3b4b63', 'RW', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('3b9ff826-a6ab-4396-ac7d-22b601b1588b', 'RW', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('371f80a1-7072-4f13-907c-baa57e9a2dd0', 'AI', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('ec8d7ec8-473c-4e6d-94c6-1956812f45f9', 'AI', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a4eab271-2c26-4d77-a540-e3b52e42f15e', 'AI', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('43dfb409-3920-42de-aee2-dd9466c1fc25', 'AI', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('91dc5829-ec04-4f14-af7e-d1856ba0b34e', 'AI', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('ba28cf96-7714-4dc0-b235-bf9ddd19bdfc', 'FD', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('825dc227-123a-48e2-bd00-19213ed7b1e2', 'FD', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('4d72a294-ead6-4d4c-ac0f-46d5f87b9ef3', 'FD', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('81e4d102-8feb-4da7-972e-1fcc183f6ea7', 'FD', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('1028724e-1103-4ef9-bf35-89414daa42cb', 'FD', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('b8029250-ec23-4260-8143-dd9822fc0835', 'FD', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('7fd050f4-8db8-4c45-8586-0e356fb28e28', 'FD', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('92faa64a-9c6f-4bb2-8f44-2bb0921a5ac5', 'FD', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('7102fdba-2773-4b5a-8917-7acd9907c79f', 'HF', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f9f25810-8738-4a18-b30e-3bee2e2fc2d9', 'HF', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('4a67260f-243a-4adf-9a87-94699166e051', 'HF', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('9c839462-bbcc-42c8-bfe3-5c6201787d6c', 'HF', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('dee6aaae-3a2d-4efb-a27d-629b40570293', 'HF', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('de170a5f-4897-4480-9185-150ec47143f8', 'HF', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('daf68824-6bce-48a8-b045-88b01ca6ac9c', 'HF', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('66f7c1cc-bc31-4861-83fd-388fd5ad1393', 'HF', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('68a0819f-e3c9-4dc3-b5a6-fc35d777e2a1', 'KG', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('1f84ccaf-3d21-432e-8c98-01ac57f1c0d0', 'KG', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('28f354aa-b770-4611-8708-1ff17de15baa', 'KG', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c9d1dfaa-0d4f-46fc-9301-4b9ccd612508', 'ED', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e4483003-7bae-426a-9c9b-314133cc72bf', 'ED', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a7ceb8f6-2338-4c86-9f01-fc56f1172127', 'ED', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('aa57cffd-aafb-4547-a060-8e101d46dcdf', 'ED', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e57c31c8-6732-4cc0-9137-63640101d262', 'HC', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('475da5ef-e80b-4a87-9c01-c4a066062e56', 'HC', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('7ab0e8a8-c160-4650-bc96-efb9045dfd85', 'HC', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('fb432fdd-729c-43b8-86f9-bb9e0e8b11ec', 'HC', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('52049101-4919-4b0a-9d66-a7af8a7b2a2f', 'HC', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c3ca715a-93f1-4dcc-bef6-08028c784974', 'HC', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('5798af2d-9169-49bc-9467-477a8a31c467', 'HC', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e148b200-6ea7-4b14-9050-cdfaa224f057', 'HC', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('3b76cf40-7abd-4c03-b4bf-af7ef25941c2', 'HC', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('58005061-f50a-4dd7-80a1-3914163cc8f9', 'HC', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('32c246d2-6257-4bba-abe5-a095b443c8c8', 'AT', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e4eeb2c5-0a54-4ff4-98f1-6a0c18d7f262', 'AT', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('55e8c47e-dbd2-4399-b7db-d90a96c020bc', 'AT', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('91229586-0552-46b0-b7d1-bc09d057a63c', 'AT', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('84c33419-db56-4092-bb73-3063a9d28c38', 'HS', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a24d466d-db7c-447c-a62a-77d68684b35c', 'HS', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('dc00364c-99b4-4ad0-a7e3-cf844a9ff7a3', 'HS', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('575b1d21-bdae-4832-9e6d-897c580d6a29', 'MH', 'SELASA', 'DUA');


--
-- Data for Name: jadwal_hindari; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('a82f2b3a-8b35-4485-a8db-d90cf4a45350', 'KALKULUS 2', 'SELASA', 'DUA', '{2}');
INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('67f147af-a3e6-495b-888d-c926afd2bff3', 'KALKULUS 2', 'KAMIS', 'DUA', '{2}');
INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('ea922380-b8c5-448c-a04e-c5a5c5aa33fa', 'KEBUDAYAAN DAN KEBANGSAAN', 'JUMAT', 'SATU', '{4}');
INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('c57ab75d-4a53-441b-9962-8e939d086acf', 'RAPAT DEPARTEMEN', 'SENIN', 'DUA', '{1,2,3,4,5,6,7,8}');


--
-- Data for Name: mata_kuliah_kelas_dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('3a46db82-562c-47c1-9186-6432ffd24c74', '54b5f5da-efbf-4840-b5f0-ed56db3a8492', 'KG', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('c9b6075c-235a-496e-8acf-fae389d986c9', '39906ed0-6c39-42df-815c-883ad3e26f95', 'KG', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('f17efd0a-60aa-4b17-a087-55d95827a8f3', '416aa34f-4788-43e2-abf4-863c1713ef3c', 'KG', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('d77a0113-73fe-472b-af28-4da74cb833d7', 'd1c29eac-b28b-4176-b9be-2aaa9a553ebf', 'HC', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('c2489df9-67b1-436f-8575-a2ddc61cec46', 'd1c29eac-b28b-4176-b9be-2aaa9a553ebf', 'MH', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('3cf7f710-dbf7-44cd-ad39-06f2aeb42fa2', '5d6c0e41-fe88-4387-9677-fd376f3a8db4', 'RW', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('544511f1-234e-4393-95be-d08892c4a592', '275e2d9a-16b9-4988-8b5e-9a70063040ff', 'FD', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('d9f0908c-505b-4913-a7ff-f2ed2bff7777', '562fb041-b2c8-4e14-9fc6-14c40680a755', 'AT', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('2042ef76-dbd1-4895-b5ef-ceee086d7097', '476eba82-c326-4c71-ae09-575125ce9bbf', 'RR', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('b3ecf134-eb46-45b9-afff-7760ec263c84', '6c2c065d-1816-4878-938c-a2be54bb03ea', 'FD', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('7ab2a279-4590-41ea-9a7c-a24c77e5b0aa', '9a004edc-5762-476d-8534-ecf51b4bf12a', 'HF', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('059e90b7-4f82-4c4f-9dbb-c73eb6404981', '0e860cca-9185-4cda-8800-76bce9a94ffb', 'RW', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('48318b55-455a-4a4b-a92d-0e12c47223a6', '136e426a-b144-4f8c-b492-3a05f60ffc40', 'AI', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('0a29e30b-3b30-45a2-bf68-f23d50de8689', '7274dfda-3d81-4afd-bdde-887119ffe27e', 'HG', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('13ca3bce-478f-44b1-951f-9d880f98420e', 'd4bb190a-70eb-4d7b-9b2a-7aeed66bbce3', 'HC', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('dc0c3442-ec64-47df-a90e-3d812ca0f0b9', '1a415c68-a058-420a-8d94-ee8f170778a4', 'IZ', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('e408655f-18d1-4304-a083-f9189dd0814c', '1a415c68-a058-420a-8d94-ee8f170778a4', 'MH', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('4d6dbc09-4ead-4a9e-abce-02928dc4339c', 'b0db3051-4fd9-47e8-9891-e2364bb01e1d', 'RR', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('3c5dd22a-f359-488f-9ae7-ee3c0ee9762b', '2bc59400-3824-4702-84bb-73f073e073a6', 'HS', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('22d0507a-1c97-44aa-b693-8326740fb5fd', 'e2214c18-6c1c-4360-87c7-0ab38714265e', 'RW', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('ad24c2f5-f92b-4882-8a3a-2013c1a1def2', '04691bd9-302f-4942-855d-e77d84841a74', 'AI', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('8152cf31-5c47-4a86-b558-c1b4f343cbe6', '62955dc8-d758-4dce-a949-c5340ca6c1ec', 'HG', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('6293fd4f-aeb6-4a8b-b288-327c7da12504', 'bf289bf6-743a-4824-9298-e2a6733923c0', 'AI', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('b1378a91-4f96-4f61-9dbe-9bdd9f322b98', '97c35774-1e09-4650-85ec-25b0c6d13548', 'IZ', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('219a9e7b-fefb-4c67-9d47-448e8b4c1f29', 'd7090827-8a09-4854-be1d-1aa98dabb191', 'ED', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('5fd4b0e2-d28a-4795-885b-c2c8c8228912', '312d282b-4580-4595-8ac0-cec4178814fe', 'RR', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('42f1a3f6-783e-48f3-8bdb-c8e641636fe0', '697b819e-06b0-4613-91a6-ef2a2f821904', 'RW', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('1e73ae8d-0ef6-429a-a390-08b9b6ffb3e2', 'a9a6b3f8-e6de-4b6c-bc0c-cad37c60ff97', 'HC', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('a0cd35c9-73fc-4ead-9d93-b00d4b4aa41a', 'a9a6b3f8-e6de-4b6c-bc0c-cad37c60ff97', 'FD', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('afab3957-e04c-48f1-8cd3-709d9c865c17', 'e004dc27-6644-4f17-8a8c-7b7a1a49b9bb', 'IZ', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('84cd0929-b84d-4a0e-8571-45d714ee2ee8', '7e709ecc-cec4-4d98-ad49-07cdf25c9657', 'HF', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('db6fae40-63a6-4b99-919e-24c5823c19bb', 'c94fe112-49df-408b-833f-61de28d6387d', 'HF', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('0aae9e15-7016-41da-b679-1e843bd68580', '461e5c48-7577-4892-8561-3324d8913bd0', 'IZ', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('c0fa31c1-ccdb-449e-be8a-c6aa4fd6d38e', '79eb7c4f-610e-4ff7-b993-195dda6706b1', 'AI', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('8a015529-2461-491a-a1fe-6092112eecab', 'e32b445c-120b-407c-9af6-ecd35ba7f707', 'RR', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('5f2fe794-b451-4bca-b321-b6a1e4d4280b', 'ef3a46e4-ed39-46fc-a9a4-8df2d7c5a64a', 'HC', '{6,4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('38930fad-5395-48dd-8078-75485f8e0758', '3afcc55a-955b-438b-aa9c-d19dfe24bd24', 'HF', '{4,2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('6fafba82-c76e-4f16-8e12-fc53e6cca028', '2da1634d-4039-4246-bc7b-505de0fb5ba1', 'IZ', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('86ef9c54-6547-41a2-876d-6f1caa186d94', 'b6fc4e91-3b6d-4ec9-b1aa-b50abf927230', 'HF', '{6}', 'PENGAYAAN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('4c39b949-748d-4a96-abec-7de9d5360d9d', '8dbd1855-16f9-4ee8-81ac-1fc0f37ee06d', 'HC', '{6}', 'DEPARTEMEN');


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public."user" (id_user, username, password) VALUES ('6372a997-2a38-47e8-bec8-41228ea78961', 'admin', '$2b$10$63fnoiBGt8XpaH4pokW5fe3kcYy9WljkBM5xycdVnY93nUY7vaX5.');


--
-- PostgreSQL database dump complete
--

