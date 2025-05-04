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

INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b001a258-f1d3-4b94-b061-066a4f6edd19', '41a19488afa750ce1b34ee06fbd86cb052316325985f16fced5e9e528c3e61a9', '2025-05-04 10:37:37.803745+00', '20250504103737_old', NULL, NULL, '2025-05-04 10:37:37.799827+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7fbf9b19-c741-457e-8854-fe72aca7227d', 'b53a96115b6b8a794b05d573cc58f2603d03ec848e5deee5ce713095d245b3c8', '2025-05-04 10:36:43.341374+00', '20250315112331_create', NULL, NULL, '2025-05-04 10:36:43.323535+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ff5e382e-bb52-4ce8-9b9c-e452efce5a7d', 'b53a96115b6b8a794b05d573cc58f2603d03ec848e5deee5ce713095d245b3c8', '2025-04-19 08:05:30.240635+00', '20250315112331_create', NULL, NULL, '2025-04-19 08:05:30.220386+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ebe14089-3746-4301-b662-1bc631dfc1b7', 'd6700544bf928874201613a27ec4b6e34f904ffddcd1c3f53c57da42b1498d16', '2025-05-04 10:36:43.345975+00', '20250315112535_add_admin', NULL, NULL, '2025-05-04 10:36:43.341939+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ad2afdbc-21ce-4a1f-950d-66c5444d99ae', 'd6700544bf928874201613a27ec4b6e34f904ffddcd1c3f53c57da42b1498d16', '2025-04-19 08:05:30.244863+00', '20250315112535_add_admin', NULL, NULL, '2025-04-19 08:05:30.241189+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('2dc564db-4b5b-4049-b6af-3109908467bf', '4399551d3cd3b06610e0957025507e5e13921219d1beed3469b614eb21ebee27', '2025-05-04 10:36:43.349444+00', '20250315190501_update_nama_kelas_in_mata_kuliah_kelas', NULL, NULL, '2025-05-04 10:36:43.346549+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('1abb7053-5571-4710-b744-89035c3feecf', '4399551d3cd3b06610e0957025507e5e13921219d1beed3469b614eb21ebee27', '2025-04-19 08:05:30.24724+00', '20250315190501_update_nama_kelas_in_mata_kuliah_kelas', NULL, NULL, '2025-04-19 08:05:30.245407+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('6df2b443-e0d1-4799-bb21-7c4a09cb114d', 'de810620ea018c237ac7b63a11153bacc7543b675ee1b957f30a40bf7a80e193', '2025-05-04 10:36:43.351776+00', '20250315190841_update_nama_kelas', NULL, NULL, '2025-05-04 10:36:43.349998+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b62945b3-81b0-42f7-99fb-7e501253ba43', 'de810620ea018c237ac7b63a11153bacc7543b675ee1b957f30a40bf7a80e193', '2025-04-19 08:05:30.249481+00', '20250315190841_update_nama_kelas', NULL, NULL, '2025-04-19 08:05:30.247758+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0704abbf-81c8-4f1b-beee-24d7a3d11920', '2e9b685877aa49831e4119b21be180e9e5ba40565c666a2fe21b9e1cb6df7c14', '2025-05-04 10:36:43.354332+00', '20250320092407_add_tipemk', NULL, NULL, '2025-05-04 10:36:43.352361+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('01bd4a21-7ca3-4714-9d1c-54a853ad88a9', '2e9b685877aa49831e4119b21be180e9e5ba40565c666a2fe21b9e1cb6df7c14', '2025-04-19 08:05:30.252159+00', '20250320092407_add_tipemk', NULL, NULL, '2025-04-19 08:05:30.249988+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('5361e337-ba9e-4ac8-884e-a32523c72783', '1a1dcad70d09a96d5df80bd7445623ae2eaeb26f4e0b994f7745fa36c756f3a6', '2025-05-04 10:36:43.356399+00', '20250322134054_add_hindari_smt', NULL, NULL, '2025-05-04 10:36:43.354814+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('5b195dbc-73dc-40bd-a576-2be6e1414cc5', '1a1dcad70d09a96d5df80bd7445623ae2eaeb26f4e0b994f7745fa36c756f3a6', '2025-04-19 08:05:30.254968+00', '20250322134054_add_hindari_smt', NULL, NULL, '2025-04-19 08:05:30.252726+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('4fea7fc3-37a6-4b24-bfc7-8ac29b5c0777', '1ed391c961aa0cd11df41da504828be9df0379444307c6fe41ca8f668b697910', '2025-05-04 10:36:43.358415+00', '20250322135342_hindari_smt_array', NULL, NULL, '2025-05-04 10:36:43.356876+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9e520112-0f7e-425b-8abd-f064b39c928f', '1ed391c961aa0cd11df41da504828be9df0379444307c6fe41ca8f668b697910', '2025-04-19 08:05:30.257605+00', '20250322135342_hindari_smt_array', NULL, NULL, '2025-04-19 08:05:30.255536+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7128dafb-7106-472e-aef0-997bb3e971ad', '90986045d55cc7847413cddec25413dfe7e9e1a9377b61f5f4d2638999bd8c30', '2025-05-04 10:36:43.363119+00', '20250322145955_admin_to_user', NULL, NULL, '2025-05-04 10:36:43.358854+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('5ade3034-6fc0-4e33-b2e5-f96193a8b34b', '90986045d55cc7847413cddec25413dfe7e9e1a9377b61f5f4d2638999bd8c30', '2025-04-19 08:05:30.26192+00', '20250322145955_admin_to_user', NULL, NULL, '2025-04-19 08:05:30.258119+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ec15d289-56ea-4aea-b553-f7b065c01522', '0226a1ad8d27fcaee0559876074e3b551e8c4a66bbe981fc13257531b1b3951b', '2025-05-04 10:36:43.36558+00', '20250414005214_update_db', NULL, NULL, '2025-05-04 10:36:43.363601+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b26009d9-8faf-4c45-a451-afaef23823a5', '0226a1ad8d27fcaee0559876074e3b551e8c4a66bbe981fc13257531b1b3951b', '2025-04-19 08:05:30.264617+00', '20250414005214_update_db', NULL, NULL, '2025-04-19 08:05:30.262472+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('4e06c115-7f60-46f1-913b-dddf696f3128', 'e7b671573202bb072051fb626b22624503c3fb88379d3e663568991fb7c7d104', '2025-05-04 10:36:43.368101+00', '20250415104422_update_dosen', NULL, NULL, '2025-05-04 10:36:43.36613+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('cad39706-5e87-4220-9504-045b10b7cb06', 'e7b671573202bb072051fb626b22624503c3fb88379d3e663568991fb7c7d104', '2025-04-19 08:05:30.266818+00', '20250415104422_update_dosen', NULL, NULL, '2025-04-19 08:05:30.265113+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('33c3f17c-0c7e-4b7c-83b5-f34a021f3efd', '20bd5be4bac915dd6886176876c53c724eaf7f91f4a95a56f1f98777c1694910', '2025-05-04 10:36:43.376276+00', '20250415105004_update_dosen_prio', NULL, NULL, '2025-05-04 10:36:43.368675+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('fd9ce812-5b20-413e-a3a8-d6f1c2bfb6af', '20bd5be4bac915dd6886176876c53c724eaf7f91f4a95a56f1f98777c1694910', '2025-04-19 08:05:30.271063+00', '20250415105004_update_dosen_prio', NULL, NULL, '2025-04-19 08:05:30.267308+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('07a15e7d-e276-47c8-9d8f-e646dbfdb9e1', 'ce54a9034457016588bf73eb9b6952d92f6364dafb1b898f83ba5455aa89a0c3', '2025-05-04 10:36:43.379988+00', '20250419045335_update_db_tipemk', NULL, NULL, '2025-05-04 10:36:43.377022+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('b9495828-8823-4700-a445-f1f738536352', 'ce54a9034457016588bf73eb9b6952d92f6364dafb1b898f83ba5455aa89a0c3', '2025-04-19 08:05:30.273341+00', '20250419045335_update_db_tipemk', NULL, NULL, '2025-04-19 08:05:30.271567+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('65c40d7b-64ae-4bbd-87d6-c8ca94c19927', 'aa1b02f24814c38baffd6ff4957e7c224e248654395ff8257ca05b466b4b69f4', '2025-05-04 10:36:43.386662+00', '20250504095251_add_created_updated_at', NULL, NULL, '2025-05-04 10:36:43.380767+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('da072aba-81a4-4da6-9c1f-31a0dc605e59', 'b53a96115b6b8a794b05d573cc58f2603d03ec848e5deee5ce713095d245b3c8', '2025-04-19 05:55:32.289477+00', '20250315112331_create', NULL, NULL, '2025-04-19 05:55:32.2187+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('9a9c7fdf-8fb1-4856-8f7b-48a4f3db62f4', 'd6700544bf928874201613a27ec4b6e34f904ffddcd1c3f53c57da42b1498d16', '2025-04-19 05:55:32.29882+00', '20250315112535_add_admin', NULL, NULL, '2025-04-19 05:55:32.290905+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('7759176e-540b-4834-86ce-38b36cb80c56', '4399551d3cd3b06610e0957025507e5e13921219d1beed3469b614eb21ebee27', '2025-04-19 05:55:32.30426+00', '20250315190501_update_nama_kelas_in_mata_kuliah_kelas', NULL, NULL, '2025-04-19 05:55:32.299828+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('99856e35-e088-4a31-9e70-b3e7b4f4db53', 'de810620ea018c237ac7b63a11153bacc7543b675ee1b957f30a40bf7a80e193', '2025-04-19 05:55:32.308535+00', '20250315190841_update_nama_kelas', NULL, NULL, '2025-04-19 05:55:32.305297+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e5c7998b-24f9-483b-ae8c-008689ec32f0', '2e9b685877aa49831e4119b21be180e9e5ba40565c666a2fe21b9e1cb6df7c14', '2025-04-19 05:55:32.313704+00', '20250320092407_add_tipemk', NULL, NULL, '2025-04-19 05:55:32.309658+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('eb42aa82-2a4f-4caf-ab26-7d8319fd70ed', '1a1dcad70d09a96d5df80bd7445623ae2eaeb26f4e0b994f7745fa36c756f3a6', '2025-04-19 05:55:32.319179+00', '20250322134054_add_hindari_smt', NULL, NULL, '2025-04-19 05:55:32.314821+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('f1ec129b-fa58-4e2a-916e-8182c0349293', '1ed391c961aa0cd11df41da504828be9df0379444307c6fe41ca8f668b697910', '2025-04-19 05:55:32.324216+00', '20250322135342_hindari_smt_array', NULL, NULL, '2025-04-19 05:55:32.320194+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('0734d700-b6dc-4d84-ae06-d0ee56491f68', 'bc12746154725f69610487b77d70bc91cd7c255ff97eea61fd4fe043239d5d1c', '2025-04-19 05:55:32.340525+00', '20250322145955_admin_to_user', NULL, NULL, '2025-04-19 05:55:32.325435+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('94e7aafa-66f7-43b0-bf2f-6da0cb217c51', '0226a1ad8d27fcaee0559876074e3b551e8c4a66bbe981fc13257531b1b3951b', '2025-04-19 05:55:32.346771+00', '20250414005214_update_db', NULL, NULL, '2025-04-19 05:55:32.341682+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('c24a92e4-556e-42f9-9b34-b06ffcc7643f', 'e7b671573202bb072051fb626b22624503c3fb88379d3e663568991fb7c7d104', '2025-04-19 05:55:32.351444+00', '20250415104422_update_dosen', NULL, NULL, '2025-04-19 05:55:32.347809+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('ece6464c-d198-447e-8c7f-bc183931b84e', '20bd5be4bac915dd6886176876c53c724eaf7f91f4a95a56f1f98777c1694910', '2025-04-19 05:55:32.356526+00', '20250415105004_update_dosen_prio', NULL, NULL, '2025-04-19 05:55:32.352681+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('555c17af-1abe-4a1a-8383-e5541f4a78a8', 'ce54a9034457016588bf73eb9b6952d92f6364dafb1b898f83ba5455aa89a0c3', '2025-04-19 05:55:32.362141+00', '20250419045335_update_db_tipemk', NULL, NULL, '2025-04-19 05:55:32.357708+00', 1);
INSERT INTO public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) VALUES ('e633e54c-90b5-4f27-8834-9057fbe4465a', '0786b44bac34ff41e59ce4ee1e3e26afb0a9c5cbebd19f39d5e8e4ea890cbe7b', '2025-04-29 03:16:53.367173+00', '20250429031023_add_jadwal_smt', NULL, NULL, '2025-04-29 03:16:53.365081+00', 1);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HF', 'Hafara Firdausi, S.Kom., M.Kom.', 'NON_PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HG', 'Dr.tech.Ir. Raden Venantius Hari Ginardi, M.Sc', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HS', 'Hatma Suryotrisongko, S.Kom., M.Eng., Ph.D.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('IZ', 'Irzal Ahmad Sabilla, S. Kom.,M.Kom', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('RW', 'Dr. Rizka Wakhidatus Sholikah, S. Kom', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('KG', 'Ir. Khakim Ghozali, M.MT', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('AT', 'Dr. Ir. Aris Tjahyanto, M.Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('HC', 'Dr. Ir. Henning Titi Ciptaningtyas, S.Kom, M.Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('MH', 'Ir. Muchammad Husni, M.Kom', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('AI', 'Annisaa Sri Indrawanti, S. Kom., M. Kom.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('ED', 'Edwin Riksakomara, S.Kom., M.T.', 'PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('FD', 'Fuad Dary Rosyadi, S.Kom., M.Kom.', 'NON_PRIORITAS');
INSERT INTO public.dosen (dosen_kode, dosen_nama, dosen_prioritas) VALUES ('RR', 'Ridho Rahman Hariadi, S.Kom., M.Sc.', 'PRIORITAS');


--
-- Data for Name: mata_kuliah; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234401', 'Manajemen Insiden Keamanan Siber');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234405', 'Kecerdasan Artifisial dan Machine Learning');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234406', 'Integrasi Sistem');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234501', 'Kriptografi');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234601', 'Interaksi Manusia dan Komputer');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234602', 'Pengembangan Sistem/Aplikasi (Capstone Project)');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234612', 'Teknologi Multimedia');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234702', 'Penulisan Ilmiah');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234703', 'Manajemen Proyek');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234814', 'Sistem Cerdas');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('001', 'Tugas Akhir');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234201', 'Sistem Operasi');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234202', 'Arsitektur Enterprise');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234203', 'Struktur Data dan Pemograman Berorientasi Objek');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234204', 'Sistem Basis Data');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234402', 'Security Operations Center');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234404', 'Big Data dan Data Lakehouse');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234403', 'Teknologi Komputasi Awan');
INSERT INTO public.mata_kuliah (matkul_kode, matkul_nama) VALUES ('ET234504', 'Teknologi Smartcity');


--
-- Data for Name: mata_kuliah_kelas; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('5c832331-2e94-4636-97bb-43cbda23b9f9', 'ET234401', 'A', 'Manajemen Insiden Keamanan Siber A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('ff3aadaa-97c0-4a6f-a034-c9cbd8305f0c', 'ET234401', 'B', 'Manajemen Insiden Keamanan Siber B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('245e7ac0-becc-4124-ba9d-cfdc0141197a', 'ET234405', 'A', 'Kecerdasan Artifisial dan Machine Learning A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('9f660474-e786-45b5-8b64-d19dfb74a1f0', 'ET234405', 'B', 'Kecerdasan Artifisial dan Machine Learning B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('a79acaaa-470a-4dc6-8864-eb709db60e48', 'ET234406', 'A', 'Integrasi Sistem A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('625afb69-1ed7-4c86-a0d5-38cb7357f908', 'ET234406', 'B', 'Integrasi Sistem B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('4da71bdf-48d6-4783-a56e-e9b9626853fa', 'ET234501', 'A', 'Kriptografi A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('7b168f8a-fda1-4bc4-9501-9709a7d2ad5a', 'ET234501', 'B', 'Kriptografi B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('673913b3-649c-49a1-8cf5-38a114bf21d2', 'ET234601', 'A', 'Interaksi Manusia dan Komputer A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('9686b187-d283-4273-a490-0881cd39874c', 'ET234601', 'B', 'Interaksi Manusia dan Komputer B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('980caabb-5b5f-48c3-9ff9-1c5825b38cee', 'ET234601', 'C', 'Interaksi Manusia dan Komputer C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('6f9b9873-fcc4-46b0-80c7-04ff302f347f', 'ET234601', 'D', 'Interaksi Manusia dan Komputer D');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('863b8886-5ccb-4cc3-a207-f72470690c22', 'ET234602', 'A', 'Pengembangan Sistem/Aplikasi (Capstone Project) A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('3e8e57c7-4970-4e1c-9398-97e34ed8d782', 'ET234602', 'B', 'Pengembangan Sistem/Aplikasi (Capstone Project) B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('1e33824f-eab2-4ffb-aa98-fbcfda31cba0', 'ET234612', 'A', 'Teknologi Multimedia A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('546cbaf8-bfce-4c7d-a8e1-0119828f0470', 'ET234612', 'B', 'Teknologi Multimedia B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('30d11eab-b567-4dfd-822a-fda7ca3f5d6c', 'ET234702', 'A', 'Penulisan Ilmiah A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('70490a10-a7ac-4d7e-9883-d778dd459066', 'ET234702', 'B', 'Penulisan Ilmiah B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('755fc6b0-8d38-4961-87b0-628ed97da9ab', 'ET234703', 'A', 'Manajemen Proyek A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('d4cc0c45-ed47-4c1b-a887-0945310b8f6b', 'ET234814', 'A', 'Sistem Cerdas A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('c13d65d5-81de-4b14-aa43-0f054976cfe4', '001', 'A', 'Tugas Akhir A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e117cfc4-aee0-47c3-ae58-9280256a6143', '001', 'B', 'Tugas Akhir B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('8b91d97b-9b2f-48a9-a6a6-81bff853ab40', '001', 'C', 'Tugas Akhir C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('a89f35bf-d24f-4cc7-b975-b83327799f14', '001', 'D', 'Tugas Akhir D');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('695842b5-e1e3-498a-a682-89db01810a89', 'ET234201', 'A', 'Sistem Operasi A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('a6e85197-c866-4e89-9ed3-45ed1d7c01ee', 'ET234201', 'B', 'Sistem Operasi B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('34cbc5ce-3119-48e1-bc9b-05e8ac5beb90', 'ET234201', 'C', 'Sistem Operasi C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('504d5142-3a3f-4d20-905d-8d7a1294f14a', 'ET234202', 'A', 'Arsitektur Enterprise A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('362634f5-ba38-45cd-a216-75758674f532', 'ET234202', 'B', 'Arsitektur Enterprise B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e7e00b04-af09-40d3-85ba-80e743ec6f20', 'ET234202', 'C', 'Arsitektur Enterprise C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('8b35b7d3-2a5c-46da-af3f-cdc1031067b7', 'ET234203', 'A', 'Struktur Data dan Pemograman Berorientasi Objek A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('506782fe-9a05-4f9d-9041-c58109063f2a', 'ET234203', 'B', 'Struktur Data dan Pemograman Berorientasi Objek B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('badadd48-d143-493e-ab0b-371f78bcb61d', 'ET234203', 'C', 'Struktur Data dan Pemograman Berorientasi Objek C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('369aa249-7d21-4e46-a469-962a3db679b1', 'ET234204', 'A', 'Sistem Basis Data A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('e6bdf369-76ae-49a1-9bd2-97dce5946b8e', 'ET234204', 'B', 'Sistem Basis Data B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('1d3866c1-bcec-4119-81c7-a87ee925ff35', 'ET234204', 'C', 'Sistem Basis Data C');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('3e870329-6caa-464c-bd8d-25913013aff4', 'ET234402', 'A', 'Security Operations Center A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('ee7cbe7e-0c1c-40ee-90d1-9496fa32856d', 'ET234404', 'A', 'Big Data dan Data Lakehouse A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('a81ff993-545d-495d-b284-014becb85807', 'ET234404', 'B', 'Big Data dan Data Lakehouse B');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('65c16ac7-3e27-444f-a45b-75a1273db3c8', 'ET234403', 'A', 'Teknologi Komputasi Awan A');
INSERT INTO public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) VALUES ('8af21b20-cbf2-4600-8cf1-a55b5cda1ced', 'ET234504', 'A', 'Teknologi Smartcity A');


--
-- Data for Name: ruangan; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('704', 48);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('705', 48);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('702', 48);
INSERT INTO public.ruangan (ruangan_kode, ruangan_kapasitas) VALUES ('703', 55);


--
-- Data for Name: jadwal; Type: TABLE DATA; Schema: public; Owner: kepsten
--



--
-- Data for Name: jadwal_dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('45437d3f-5b60-4005-be1c-16ce2231c091', 'ED', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2de8c307-9a1f-43e0-b531-f6a9c54fd33e', 'ED', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('848e13a6-6304-445c-9384-c5295606993c', 'ED', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('afc466bd-284d-44f7-9faf-a0a50724e334', 'ED', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('5a71855e-4e87-4e27-885b-4335633b6c72', 'FD', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('49fda81c-70c0-46ca-9392-d218bc42e807', 'FD', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('93561a00-4c76-4083-927b-ab12dd9a4c3b', 'FD', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f3077968-159a-45a3-a287-846f12d437fe', 'FD', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2ba4ce73-74e5-4dd1-a10c-503b408536aa', 'FD', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('bd1c6f86-eba7-44d6-9e99-21344a38693a', 'FD', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('7161b1dd-f61c-4c76-b797-5afb1e32f110', 'FD', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('b5258aa7-4fa5-48c2-98ee-5df19605c069', 'FD', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('cc1f488c-f067-4a12-96c2-a3168f0b8ea6', 'RR', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f69c21c4-1b94-4d0a-8547-90f9a9598e4f', 'RR', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('5a779ed3-4d40-4252-af66-794bb5c861db', 'RR', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('0aecaf88-bd8b-4fd5-aa80-8227da80c756', 'RR', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('123ee49d-f6c9-496d-86d6-f5943b47c199', 'RR', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('3371ddf7-d217-4345-823a-ab6b88eb156b', 'HF', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('cc158fef-3509-4125-a863-429aa5961197', 'HF', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('95ed1702-07b8-402d-a4be-d672c8817a9a', 'HF', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('9c50ce3f-eca6-4aa0-8f18-3b23970b7559', 'HF', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a7fa175c-e43e-41d8-8ae3-f92bd31ca34f', 'HF', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f3e26384-98b9-42b2-8c01-7bd9a7a86deb', 'HF', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('637522b9-7a6c-4556-9445-a0081067c4ab', 'HF', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a1315c13-5456-440c-bc71-28932f3ccc52', 'HF', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('22e7fb91-8f50-40e8-93b7-ad0b0d4e2aa9', 'HG', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('6ddfc30c-9235-41ec-89b9-d9fea2d10132', 'HG', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('81cd2d73-933c-4dc9-80ea-fd291f5a544b', 'HG', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('bad58b6e-6d63-449c-a9c3-979bbdabe443', 'HG', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('b6036cfd-52fe-49af-b4f0-db58a3cb767d', 'HG', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c5f50ee7-4a03-4ac6-a079-1063b3c026b5', 'HS', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('df5113be-42c4-4be8-b083-3bf49fbc42bf', 'HS', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('1da86b7d-8b11-4931-be9e-664e3ab721b9', 'HS', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('8434b4f4-7bb0-4177-af09-89de7bc39614', 'IZ', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('cb6a8dc6-45fd-40b2-9eaf-057bc408d830', 'IZ', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('67b1a375-ccf2-4d4d-a419-e7843e171aa3', 'IZ', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c351e228-1d67-4cf3-8fcb-b2d028ad503c', 'IZ', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e92266d3-bbe9-449a-98f3-9ee753404498', 'IZ', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('46872d0c-2496-40dd-af5f-b1ad8ad7dc7f', 'IZ', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a3728eeb-b6a4-4a65-98a9-5c03ac707fa0', 'IZ', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2b3ab799-5ae5-4af1-b869-ab54d6ba1554', 'IZ', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('9bac7fd6-4a12-4f7c-9bda-8c27bd675d59', 'IZ', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('d0225eea-9801-434b-bbd1-e583e53723a7', 'IZ', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('a89c88ff-df99-4830-be0e-6a90897290b6', 'IZ', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('63f191b3-fa16-4dc6-819c-0193cbea6b40', 'IZ', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('c77043ba-9a03-450b-a16c-cb3fe7cd829b', 'RW', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('d91e5e33-5af4-4649-ae34-b18f3124f9b1', 'RW', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2ce39f37-a269-41cc-969d-4895bdba5657', 'RW', 'SELASA', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('e5c361d1-c074-4669-82f9-f24a4ecc14f5', 'RW', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('713ff300-cece-4dad-a581-4c4923ee7164', 'RW', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('0d778043-d0bd-41c0-9259-f7267559375a', 'RW', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f0a6d97c-408b-4a2c-b518-e58bf3ceaeab', 'RW', 'KAMIS', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('d1647eb9-5493-495c-8669-4c5b047b3d0a', 'RW', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('51b6e237-9618-40e7-83df-e5c440f0793d', 'RW', 'JUMAT', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('5913bd28-6c75-439b-825e-f46807f2da7a', 'RW', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('08ef2157-b0e8-48ad-be38-be227e28f0ff', 'KG', 'SENIN', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('1ec68e15-ad0a-4e03-bb36-1e74164ff8e4', 'KG', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('79889e64-ffd9-4596-b2c9-53ebfc9b6275', 'KG', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('19e04ff8-dcab-4fd3-97c4-ac0ff3f3368d', 'AT', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('45076adf-9f7b-4be0-83a0-5aad59c94636', 'AT', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('2f1cb687-7d27-47aa-ac31-becb52b21fb6', 'AT', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('b1297d58-9873-42d9-a363-e4e8412d053b', 'AT', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f87d9c43-22d8-4dc3-a851-8a3967ba41f2', 'HC', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('42b7fea5-7fcb-42c6-9f7d-b3c62b7f508a', 'HC', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('8598c085-d306-4248-9bd0-970e74c763fb', 'HC', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('6d8aed7e-d465-4de8-871e-61d187dca394', 'HC', 'KAMIS', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('31400ba2-5687-47bb-906c-fd26dfc7916d', 'HC', 'JUMAT', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('dd90b7a7-0da5-400e-82c6-0bbef318338a', 'HC', 'SENIN', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f068d6ac-b43c-4554-997b-3a1d16ebc591', 'HC', 'SELASA', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('98cd2a24-198f-44b4-a065-c0ccb76df7e3', 'HC', 'RABU', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('72708310-61a2-4f94-b2c1-491715eecbb2', 'HC', 'KAMIS', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('f1fc6ce2-fdbd-40d9-b46a-d22f4f788e87', 'HC', 'JUMAT', 'TIGA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('fc87abf6-a095-40df-82a2-5454b4b69bb8', 'MH', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('fb322037-58ae-489f-8534-899d174ef807', 'AI', 'RABU', 'SATU');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('35ec888f-1feb-4cc1-b507-b0cbc716403c', 'AI', 'SENIN', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('366a94c6-dc06-495e-ae1f-60fe650056dc', 'AI', 'SELASA', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('73f1a535-cda1-4191-983c-ca392809ca03', 'AI', 'RABU', 'DUA');
INSERT INTO public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) VALUES ('d20b4cec-e3be-4e73-95a3-51e0e57d4ff7', 'AI', 'KAMIS', 'DUA');


--
-- Data for Name: jadwal_hindari; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('73614d19-9012-4657-a523-15ea002e71ec', 'KALKULUS 2', 'KAMIS', 'DUA', '{2}');
INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('937e0fac-447e-4669-9011-f996506cc053', 'KALKULUS 2', 'SELASA', 'DUA', '{2}');
INSERT INTO public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) VALUES ('dc62b811-2f1a-4381-93b2-9497a685bef9', 'KEBUDAYAAN DAN KEBANGSAAN', 'JUMAT', 'SATU', '{4}');


--
-- Data for Name: mata_kuliah_kelas_dosen; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('ea4b57b9-47be-491c-982f-69607888a632', '863b8886-5ccb-4cc3-a207-f72470690c22', 'RR', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('40a09626-ce51-44dc-9f89-fec3f618a8f4', '3e8e57c7-4970-4e1c-9398-97e34ed8d782', 'RR', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('22937427-fe2e-45be-be20-6c2bd4446e64', '7b168f8a-fda1-4bc4-9501-9709a7d2ad5a', 'HF', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('2a695ff1-1626-43a9-a2a8-19fc634a730e', '4da71bdf-48d6-4783-a56e-e9b9626853fa', 'HF', '{6}', 'PENGAYAAN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('4a1de985-b922-4590-8a48-72509067e4c4', '5c832331-2e94-4636-97bb-43cbda23b9f9', 'AI', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('0261b645-2094-4d1e-8ef7-524f9b192e00', 'ff3aadaa-97c0-4a6f-a034-c9cbd8305f0c', 'AI', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('cefe463d-065e-4753-9ce1-69d75838487c', '30d11eab-b567-4dfd-822a-fda7ca3f5d6c', 'HC', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('91fae1fd-7833-458b-8303-b32f19e2b98a', '70490a10-a7ac-4d7e-9883-d778dd459066', 'HC', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('9b25107c-d241-4e00-8e25-b1461288d9be', 'a79acaaa-470a-4dc6-8864-eb709db60e48', 'RR', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('5dcca164-570f-4bd0-92fa-bed33683ae1c', '625afb69-1ed7-4c86-a0d5-38cb7357f908', 'RR', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('b6489573-fc83-4303-b5de-6c71de16233d', '245e7ac0-becc-4124-ba9d-cfdc0141197a', 'IZ', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('c204a100-f785-4d03-a333-8a63761d3a58', '9f660474-e786-45b5-8b64-d19dfb74a1f0', 'RW', '{4}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('d5ef64cc-ef43-499c-a11e-a6f9eb8e324b', '673913b3-649c-49a1-8cf5-38a114bf21d2', 'IZ', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('4a3eb3b7-6801-4ce7-9f4a-7df13eeac0ba', '980caabb-5b5f-48c3-9ff9-1c5825b38cee', 'HF', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('07400591-fa33-4105-96ac-c578a644f36f', '6f9b9873-fcc4-46b0-80c7-04ff302f347f', 'HF', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('223d2990-a785-4fe1-91b1-028b5a9152d1', '9686b187-d283-4273-a490-0881cd39874c', 'IZ', '{2}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('4b5e236f-09a8-445a-8198-0fa60b56c0a9', 'd4cc0c45-ed47-4c1b-a887-0945310b8f6b', 'IZ', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('46a03eca-e113-40a2-916b-2773cf5de23b', '1e33824f-eab2-4ffb-aa98-fbcfda31cba0', 'AI', '{6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('08a035dc-0492-4175-9863-2b9adcec4d6e', '546cbaf8-bfce-4c7d-a8e1-0119828f0470', 'HC', '{4,6}', 'DEPARTEMEN');
INSERT INTO public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) VALUES ('34e0e6ed-308a-4dcd-972a-ac474e62b283', 'a79acaaa-470a-4dc6-8864-eb709db60e48', 'AT', '{1,2}', 'PENGAYAAN');


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: kepsten
--

INSERT INTO public."user" (id_user, username, password) VALUES ('0bf6cb76-2e34-49d2-8da8-d355fcccbedd', 'admin', '$2b$10$UQl11jjwbh6va6S.7iSlouRhvVxbT1J/46iMrZehExRbXesq9CSQC');


--
-- PostgreSQL database dump complete
--

