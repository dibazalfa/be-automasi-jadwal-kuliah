--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2025-04-19 15:07:59

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
-- TOC entry 4907 (class 0 OID 26973)
-- Dependencies: 215
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
da072aba-81a4-4da6-9c1f-31a0dc605e59	b53a96115b6b8a794b05d573cc58f2603d03ec848e5deee5ce713095d245b3c8	2025-04-19 12:55:32.289477+07	20250315112331_create	\N	\N	2025-04-19 12:55:32.2187+07	1
9a9c7fdf-8fb1-4856-8f7b-48a4f3db62f4	d6700544bf928874201613a27ec4b6e34f904ffddcd1c3f53c57da42b1498d16	2025-04-19 12:55:32.29882+07	20250315112535_add_admin	\N	\N	2025-04-19 12:55:32.290905+07	1
7759176e-540b-4834-86ce-38b36cb80c56	4399551d3cd3b06610e0957025507e5e13921219d1beed3469b614eb21ebee27	2025-04-19 12:55:32.30426+07	20250315190501_update_nama_kelas_in_mata_kuliah_kelas	\N	\N	2025-04-19 12:55:32.299828+07	1
99856e35-e088-4a31-9e70-b3e7b4f4db53	de810620ea018c237ac7b63a11153bacc7543b675ee1b957f30a40bf7a80e193	2025-04-19 12:55:32.308535+07	20250315190841_update_nama_kelas	\N	\N	2025-04-19 12:55:32.305297+07	1
e5c7998b-24f9-483b-ae8c-008689ec32f0	2e9b685877aa49831e4119b21be180e9e5ba40565c666a2fe21b9e1cb6df7c14	2025-04-19 12:55:32.313704+07	20250320092407_add_tipemk	\N	\N	2025-04-19 12:55:32.309658+07	1
eb42aa82-2a4f-4caf-ab26-7d8319fd70ed	1a1dcad70d09a96d5df80bd7445623ae2eaeb26f4e0b994f7745fa36c756f3a6	2025-04-19 12:55:32.319179+07	20250322134054_add_hindari_smt	\N	\N	2025-04-19 12:55:32.314821+07	1
f1ec129b-fa58-4e2a-916e-8182c0349293	1ed391c961aa0cd11df41da504828be9df0379444307c6fe41ca8f668b697910	2025-04-19 12:55:32.324216+07	20250322135342_hindari_smt_array	\N	\N	2025-04-19 12:55:32.320194+07	1
0734d700-b6dc-4d84-ae06-d0ee56491f68	bc12746154725f69610487b77d70bc91cd7c255ff97eea61fd4fe043239d5d1c	2025-04-19 12:55:32.340525+07	20250322145955_admin_to_user	\N	\N	2025-04-19 12:55:32.325435+07	1
94e7aafa-66f7-43b0-bf2f-6da0cb217c51	0226a1ad8d27fcaee0559876074e3b551e8c4a66bbe981fc13257531b1b3951b	2025-04-19 12:55:32.346771+07	20250414005214_update_db	\N	\N	2025-04-19 12:55:32.341682+07	1
c24a92e4-556e-42f9-9b34-b06ffcc7643f	e7b671573202bb072051fb626b22624503c3fb88379d3e663568991fb7c7d104	2025-04-19 12:55:32.351444+07	20250415104422_update_dosen	\N	\N	2025-04-19 12:55:32.347809+07	1
ece6464c-d198-447e-8c7f-bc183931b84e	20bd5be4bac915dd6886176876c53c724eaf7f91f4a95a56f1f98777c1694910	2025-04-19 12:55:32.356526+07	20250415105004_update_dosen_prio	\N	\N	2025-04-19 12:55:32.352681+07	1
555c17af-1abe-4a1a-8383-e5541f4a78a8	ce54a9034457016588bf73eb9b6952d92f6364dafb1b898f83ba5455aa89a0c3	2025-04-19 12:55:32.362141+07	20250419045335_update_db_tipemk	\N	\N	2025-04-19 12:55:32.357708+07	1
\.


--
-- TOC entry 4908 (class 0 OID 27007)
-- Dependencies: 216
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dosen (dosen_kode, dosen_nama, dosen_prioritas) FROM stdin;
HC	Dr. Ir. Henning Titi Ciptaningtyas, S.Kom, M.Kom.	PRIORITAS
RR	Ridho Rahman Hariadi, S.Kom., M.Sc.	PRIORITAS
AI	Annisaa Sri Indrawanti, S. Kom., M. Kom.	PRIORITAS
AT	Dr. Ir. Aris Tjahyanto, M.Kom.	PRIORITAS
ED	Edwin Riksakomara, S.Kom., M.T.	PRIORITAS
FD	Fuad Dary Rosyadi, S.Kom., M.Kom.	NON_PRIORITAS
HF	Hafara Firdausi, S.Kom., M.Kom.	NON_PRIORITAS
HG	Dr.tech.Ir. Raden Venantius Hari Ginardi, M.Sc	PRIORITAS
HS	Hatma Suryotrisongko, S.Kom., M.Eng., Ph.D.	PRIORITAS
IZ	Irzal Ahmad Sabilla, S. Kom.,M.Kom	PRIORITAS
KG	Ir. Khakim Ghozali, M.MT	PRIORITAS
MH	Ir. Muchammad Husni, M.Kom	PRIORITAS
RW	Dr. Rizka Wakhidatus Sholikah, S. Kom	PRIORITAS
\.


--
-- TOC entry 4910 (class 0 OID 27019)
-- Dependencies: 218
-- Data for Name: mata_kuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mata_kuliah (matkul_kode, matkul_nama) FROM stdin;
ET234201	Sistem Operasi
ET234202	Arsitektur Enterprise
ET234203	Struktur Data dan Pemograman Berorientasi Objek
ET234204	Sistem Basis Data
ET234401	Manajemen Insiden Keamanan Siber
ET234402	Security Operations Center
ET234403	Teknologi Komputasi Awan
ET234404	Big Data dan Data Lakehouse
ET234405	Kecerdasan Artifisial dan Machine Learning
ET234406	Integrasi Sistem
ET234501	Kriptografi
ET234504	Teknologi Smartcity
ET234601	Interaksi Manusia dan Komputer
ET234602	Pengembangan Sistem/Aplikasi (Capstone Project)
ET234612	Teknologi Multimedia
ET234702	Penulisan Ilmiah
ET234703	Manajemen Proyek
ET234814	Sistem Cerdas
\.


--
-- TOC entry 4911 (class 0 OID 27024)
-- Dependencies: 219
-- Data for Name: mata_kuliah_kelas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mata_kuliah_kelas (id_mk_kelas, matkul_kode, kelas_mk, nama_kelas) FROM stdin;
72d4d398-256b-41a8-9620-f7bc6173e501	ET234201	A	Sistem Operasi A
fc4ac3ef-fc15-435a-b94e-77a0cd8fea51	ET234201	B	Sistem Operasi B
0d027b43-a5eb-4ec6-9a71-786232aa63b1	ET234201	C	Sistem Operasi C
b206698a-dc86-4c8b-8977-ff8b8cb6bee3	ET234202	A	Arsitektur Enterprise A
6a5d0487-975a-484f-980f-d686696ac0b8	ET234202	B	Arsitektur Enterprise B
9c82b60e-a70e-4a67-87e3-684991163bcd	ET234202	C	Arsitektur Enterprise C
1d37c549-3873-479b-9075-5654f8a4a3a0	ET234203	A	Struktur Data dan Pemograman Berorientasi Objek A
5d3b90c4-c8f5-41da-ac26-939d2464973c	ET234203	B	Struktur Data dan Pemograman Berorientasi Objek B
35885c6a-bb08-4e43-be4f-51a03df98bc2	ET234203	C	Struktur Data dan Pemograman Berorientasi Objek C
41fdce3e-76b5-43c9-b007-f563a173a0c8	ET234204	A	Sistem Basis Data A
b7392f6c-e87e-4592-908b-47eccdb631e0	ET234204	B	Sistem Basis Data B
0a367772-a042-46bf-be98-2fd079b94e0d	ET234204	C	Sistem Basis Data C
5c832331-2e94-4636-97bb-43cbda23b9f9	ET234401	A	Manajemen Insiden Keamanan Siber A
ff3aadaa-97c0-4a6f-a034-c9cbd8305f0c	ET234401	B	Manajemen Insiden Keamanan Siber B
1f3d84e2-4f33-4701-92ea-591055408bf1	ET234402	A	Security Operations Center A
c93a8fb6-719b-45c1-a38c-281de0c6ac9e	ET234403	A	Teknologi Komputasi Awan A
a6d96fd4-1be4-4c56-9561-a1752a7c8b14	ET234404	A	Big Data dan Data Lakehouse A
e7799db8-cc81-4e4a-bc28-160b9bdc7a9a	ET234404	B	Big Data dan Data Lakehouse B
245e7ac0-becc-4124-ba9d-cfdc0141197a	ET234405	A	Kecerdasan Artifisial dan Machine Learning A
9f660474-e786-45b5-8b64-d19dfb74a1f0	ET234405	B	Kecerdasan Artifisial dan Machine Learning B
a79acaaa-470a-4dc6-8864-eb709db60e48	ET234406	A	Integrasi Sistem A
625afb69-1ed7-4c86-a0d5-38cb7357f908	ET234406	B	Integrasi Sistem B
4da71bdf-48d6-4783-a56e-e9b9626853fa	ET234501	A	Kriptografi A
7b168f8a-fda1-4bc4-9501-9709a7d2ad5a	ET234501	B	Kriptografi B
9a161308-50b7-45ab-a529-c47da5b915d5	ET234504	A	Teknologi Smartcity A
673913b3-649c-49a1-8cf5-38a114bf21d2	ET234601	A	Interaksi Manusia dan Komputer A
9686b187-d283-4273-a490-0881cd39874c	ET234601	B	Interaksi Manusia dan Komputer B
980caabb-5b5f-48c3-9ff9-1c5825b38cee	ET234601	C	Interaksi Manusia dan Komputer C
6f9b9873-fcc4-46b0-80c7-04ff302f347f	ET234601	D	Interaksi Manusia dan Komputer D
863b8886-5ccb-4cc3-a207-f72470690c22	ET234602	A	Pengembangan Sistem/Aplikasi (Capstone Project) A
3e8e57c7-4970-4e1c-9398-97e34ed8d782	ET234602	B	Pengembangan Sistem/Aplikasi (Capstone Project) B
1e33824f-eab2-4ffb-aa98-fbcfda31cba0	ET234612	A	Teknologi Multimedia A
546cbaf8-bfce-4c7d-a8e1-0119828f0470	ET234612	B	Teknologi Multimedia B
30d11eab-b567-4dfd-822a-fda7ca3f5d6c	ET234702	A	Penulisan Ilmiah A
70490a10-a7ac-4d7e-9883-d778dd459066	ET234702	B	Penulisan Ilmiah B
755fc6b0-8d38-4961-87b0-628ed97da9ab	ET234703	A	Manajemen Proyek A
d4cc0c45-ed47-4c1b-a887-0945310b8f6b	ET234814	A	Sistem Cerdas A
\.


--
-- TOC entry 4914 (class 0 OID 27045)
-- Dependencies: 222
-- Data for Name: ruangan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ruangan (ruangan_kode, ruangan_kapasitas) FROM stdin;
702	48
703	55
704	48
705	48
\.


--
-- TOC entry 4915 (class 0 OID 27052)
-- Dependencies: 223
-- Data for Name: jadwal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jadwal (id_jadwal, id_mk_kelas, ruangan_kode, jadwal_hari, jadwal_sesi) FROM stdin;
\.


--
-- TOC entry 4909 (class 0 OID 27012)
-- Dependencies: 217
-- Data for Name: jadwal_dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jadwal_dosen (id_jadwal_dosen, dosen_kode, dosen_sedia_hari, dosen_sedia_sesi) FROM stdin;
812946f1-6722-4f06-9924-ccb1d2bc93ca	HC	SENIN	DUA
57d2675d-3fa5-4734-8e31-86df14f0e9df	HC	SELASA	DUA
b517d578-49d1-491b-8dc7-b6713647023c	HC	RABU	DUA
b06ddfc9-0cc4-4427-861f-e0bab7da7063	HC	KAMIS	DUA
98ed7b90-0f46-46ba-901b-63559d206aff	HC	JUMAT	DUA
8cfcf096-6693-4874-b9a6-6c2646ba8765	HC	SENIN	TIGA
6a979158-a3cf-474c-8fe4-410ef61bc36e	HC	SELASA	TIGA
e0ba778a-e1ba-4454-b713-c76bbf681cde	HC	RABU	TIGA
44304b3d-cb38-460f-9bb7-b9536220c40b	HC	KAMIS	TIGA
8fb3d5e5-0308-4f70-9155-dbab6f2f07fd	HC	JUMAT	TIGA
15851645-315b-4a85-a20f-d62248396c46	RR	SENIN	SATU
50561c94-5766-448c-9757-c3c055610850	RR	SELASA	SATU
ba5841e9-4006-4b78-a808-0061533effe9	RR	RABU	SATU
e97d23e8-9d73-4620-a4f3-ef19a89a91ef	RR	KAMIS	SATU
0e10ae04-d58d-4c0a-8e4d-53d71d8be1a6	RR	JUMAT	SATU
cc4372e3-6cbb-44c5-8319-a6822e2cb71e	AI	SENIN	DUA
37b3e609-c769-4a9c-8fe6-1b548ce041dd	AI	SELASA	DUA
a398d049-4def-43c2-8a39-af67abe64286	AI	RABU	SATU
7536f455-b0cf-4a36-a656-10bab805ad24	AI	RABU	DUA
46a6ef27-8759-4828-b64a-8f187af656e1	AI	KAMIS	DUA
59c79d0e-dc20-4fc7-8aad-0a65b7caef3a	AT	SENIN	TIGA
f4bd9bd0-c92c-4ab6-88d0-35a7a26e6b56	AT	SELASA	TIGA
16823572-7411-4751-b617-027785352f24	AT	RABU	TIGA
8eca0f2d-9071-4fff-b983-2335e73461ef	AT	KAMIS	TIGA
ddf2e673-1ea8-471c-82d0-1c62318b0a8f	ED	SELASA	TIGA
733477ae-ecc1-4199-987d-53b585702bc9	ED	RABU	TIGA
0b1c77d1-2275-4aed-b9f1-ce7a12c05f9c	ED	KAMIS	TIGA
fe57a7df-4f9a-4632-be19-cf4860d5f27c	FD	SELASA	DUA
69cbc255-290d-458d-9b47-6aebca01b8c6	FD	RABU	DUA
96aa1269-6765-425b-9acc-633de89dd446	FD	KAMIS	DUA
b67a7f00-e937-47e0-9d85-3984cdd4812a	FD	JUMAT	DUA
222985e4-e005-43ed-8ac3-545709187711	FD	SELASA	TIGA
35ab7de4-2071-4bb9-b001-1ba2bc350155	FD	RABU	TIGA
6dd7c54a-d747-4070-8ae7-076f4e085e6f	FD	KAMIS	TIGA
f5c72909-215c-4533-8f52-5438c92b60ed	FD	JUMAT	TIGA
3371ddf7-d217-4345-823a-ab6b88eb156b	HF	SELASA	DUA
cc158fef-3509-4125-a863-429aa5961197	HF	RABU	DUA
95ed1702-07b8-402d-a4be-d672c8817a9a	HF	KAMIS	DUA
9c50ce3f-eca6-4aa0-8f18-3b23970b7559	HF	JUMAT	DUA
a7fa175c-e43e-41d8-8ae3-f92bd31ca34f	HF	SELASA	TIGA
f3e26384-98b9-42b2-8c01-7bd9a7a86deb	HF	RABU	TIGA
637522b9-7a6c-4556-9445-a0081067c4ab	HF	KAMIS	TIGA
a1315c13-5456-440c-bc71-28932f3ccc52	HF	JUMAT	TIGA
22e7fb91-8f50-40e8-93b7-ad0b0d4e2aa9	HG	SELASA	TIGA
6ddfc30c-9235-41ec-89b9-d9fea2d10132	HG	RABU	SATU
81cd2d73-933c-4dc9-80ea-fd291f5a544b	HG	RABU	DUA
bad58b6e-6d63-449c-a9c3-979bbdabe443	HG	RABU	TIGA
b6036cfd-52fe-49af-b4f0-db58a3cb767d	HG	KAMIS	TIGA
c5f50ee7-4a03-4ac6-a079-1063b3c026b5	HS	SELASA	TIGA
df5113be-42c4-4be8-b083-3bf49fbc42bf	HS	RABU	TIGA
1da86b7d-8b11-4931-be9e-664e3ab721b9	HS	KAMIS	TIGA
8434b4f4-7bb0-4177-af09-89de7bc39614	IZ	SELASA	SATU
cb6a8dc6-45fd-40b2-9eaf-057bc408d830	IZ	SELASA	DUA
67b1a375-ccf2-4d4d-a419-e7843e171aa3	IZ	SELASA	TIGA
c351e228-1d67-4cf3-8fcb-b2d028ad503c	IZ	RABU	SATU
e92266d3-bbe9-449a-98f3-9ee753404498	IZ	RABU	DUA
46872d0c-2496-40dd-af5f-b1ad8ad7dc7f	IZ	RABU	TIGA
a3728eeb-b6a4-4a65-98a9-5c03ac707fa0	IZ	KAMIS	SATU
2b3ab799-5ae5-4af1-b869-ab54d6ba1554	IZ	KAMIS	DUA
9bac7fd6-4a12-4f7c-9bda-8c27bd675d59	IZ	KAMIS	TIGA
d0225eea-9801-434b-bbd1-e583e53723a7	IZ	JUMAT	SATU
a89c88ff-df99-4830-be0e-6a90897290b6	IZ	JUMAT	DUA
63f191b3-fa16-4dc6-819c-0193cbea6b40	IZ	JUMAT	TIGA
08cc64cd-77b9-4a4c-b24e-54588ddf1913	KG	SENIN	SATU
7dc79635-4e63-4c65-b2c3-8c5c21b562bd	KG	SENIN	DUA
c743385d-2b5e-4db5-abf2-c12f0cad81c3	KG	SENIN	TIGA
6929c8ae-322b-4440-aae2-f53384ed239d	MH	SELASA	DUA
c77043ba-9a03-450b-a16c-cb3fe7cd829b	RW	SENIN	SATU
d91e5e33-5af4-4649-ae34-b18f3124f9b1	RW	SENIN	TIGA
2ce39f37-a269-41cc-969d-4895bdba5657	RW	SELASA	SATU
e5c361d1-c074-4669-82f9-f24a4ecc14f5	RW	SELASA	TIGA
713ff300-cece-4dad-a581-4c4923ee7164	RW	RABU	SATU
0d778043-d0bd-41c0-9259-f7267559375a	RW	RABU	TIGA
f0a6d97c-408b-4a2c-b518-e58bf3ceaeab	RW	KAMIS	SATU
d1647eb9-5493-495c-8669-4c5b047b3d0a	RW	KAMIS	TIGA
51b6e237-9618-40e7-83df-e5c440f0793d	RW	JUMAT	SATU
5913bd28-6c75-439b-825e-f46807f2da7a	RW	JUMAT	TIGA
\.


--
-- TOC entry 4913 (class 0 OID 27038)
-- Dependencies: 221
-- Data for Name: jadwal_hindari; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jadwal_hindari (id_hindari, hindari_agenda, hindari_hari, hindari_sesi, hindari_smt) FROM stdin;
dc62b811-2f1a-4381-93b2-9497a685bef9	KEBUDAYAAN DAN KEBANGSAAN	JUMAT	SATU	{4}
73614d19-9012-4657-a523-15ea002e71ec	KALKULUS 2	KAMIS	DUA	{4}
937e0fac-447e-4669-9011-f996506cc053	KALKULUS 2	SELASA	DUA	{4}
\.


--
-- TOC entry 4912 (class 0 OID 27031)
-- Dependencies: 220
-- Data for Name: mata_kuliah_kelas_dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mata_kuliah_kelas_dosen (id_mk_kelas_dosen, id_mk_kelas, dosen_kode, mk_kelas_sem, matkul_tipe) FROM stdin;
47508ec9-d820-4eb5-8083-c40b39a0890a	b206698a-dc86-4c8b-8977-ff8b8cb6bee3	KG	{2}	DEPARTEMEN
f3fa85ff-14b0-4d1b-9391-36ec9e054221	6a5d0487-975a-484f-980f-d686696ac0b8	KG	{2}	DEPARTEMEN
ce56dfa9-7ff4-4643-83a2-b47b3cb04c74	9c82b60e-a70e-4a67-87e3-684991163bcd	KG	{2}	DEPARTEMEN
d60df804-6d21-490f-b195-79625a5f69f6	72d4d398-256b-41a8-9620-f7bc6173e501	HC	{2}	DEPARTEMEN
3791136f-0bf5-4f12-bb0f-d1842becac1f	72d4d398-256b-41a8-9620-f7bc6173e501	MH	{2}	DEPARTEMEN
64c86342-5073-41fa-9f41-df23f9c64b94	fc4ac3ef-fc15-435a-b94e-77a0cd8fea51	HG	{2}	DEPARTEMEN
be51519f-63b4-4b46-994b-9ad387446581	0d027b43-a5eb-4ec6-9a71-786232aa63b1	HG	{2}	DEPARTEMEN
0761715d-b613-436e-b145-ad518bf31335	35885c6a-bb08-4e43-be4f-51a03df98bc2	AT	{2}	DEPARTEMEN
801243f5-bdb7-4f38-8e24-df93df3a12e4	1d37c549-3873-479b-9075-5654f8a4a3a0	HF	{2}	DEPARTEMEN
ba3b645e-e003-4d95-a0ef-4c799381dbbc	5d3b90c4-c8f5-41da-ac26-939d2464973c	RW	{2}	DEPARTEMEN
ea4b57b9-47be-491c-982f-69607888a632	863b8886-5ccb-4cc3-a207-f72470690c22	RR	{6}	DEPARTEMEN
40a09626-ce51-44dc-9f89-fec3f618a8f4	3e8e57c7-4970-4e1c-9398-97e34ed8d782	RR	{6}	DEPARTEMEN
22937427-fe2e-45be-be20-6c2bd4446e64	7b168f8a-fda1-4bc4-9501-9709a7d2ad5a	HF	{6}	DEPARTEMEN
2a695ff1-1626-43a9-a2a8-19fc634a730e	4da71bdf-48d6-4783-a56e-e9b9626853fa	HF	{6}	PENGAYAAN
e3a0ada1-c309-4221-8c24-bb5fc106831e	41fdce3e-76b5-43c9-b007-f563a173a0c8	RW	{2}	DEPARTEMEN
7f29d25f-543d-45ab-b0da-b96a24143408	b7392f6c-e87e-4592-908b-47eccdb631e0	RW	{2}	DEPARTEMEN
f43fc0b9-b48b-40f5-8c8d-859077e4e464	0a367772-a042-46bf-be98-2fd079b94e0d	AI	{2}	DEPARTEMEN
4a1de985-b922-4590-8a48-72509067e4c4	5c832331-2e94-4636-97bb-43cbda23b9f9	AI	{4}	DEPARTEMEN
0261b645-2094-4d1e-8ef7-524f9b192e00	ff3aadaa-97c0-4a6f-a034-c9cbd8305f0c	AI	{4}	DEPARTEMEN
cefe463d-065e-4753-9ce1-69d75838487c	30d11eab-b567-4dfd-822a-fda7ca3f5d6c	HC	{6}	DEPARTEMEN
91fae1fd-7833-458b-8303-b32f19e2b98a	70490a10-a7ac-4d7e-9883-d778dd459066	HC	{6}	DEPARTEMEN
d9ea8a49-6501-447e-b942-260b1427112f	9a161308-50b7-45ab-a529-c47da5b915d5	IZ	{6}	DEPARTEMEN
71084277-8c65-41b4-80fc-3feee3fdf219	9a161308-50b7-45ab-a529-c47da5b915d5	MH	{6}	DEPARTEMEN
9b25107c-d241-4e00-8e25-b1461288d9be	a79acaaa-470a-4dc6-8864-eb709db60e48	RR	{4}	DEPARTEMEN
5dcca164-570f-4bd0-92fa-bed33683ae1c	625afb69-1ed7-4c86-a0d5-38cb7357f908	RR	{4}	DEPARTEMEN
44757a7c-5718-4be0-98c2-c03271a86c0a	1f3d84e2-4f33-4701-92ea-591055408bf1	HS	{4,6}	DEPARTEMEN
b6489573-fc83-4303-b5de-6c71de16233d	245e7ac0-becc-4124-ba9d-cfdc0141197a	IZ	{4}	DEPARTEMEN
c204a100-f785-4d03-a333-8a63761d3a58	9f660474-e786-45b5-8b64-d19dfb74a1f0	RW	{4}	DEPARTEMEN
4e34f33b-6743-4e08-94d4-09b77f847cf8	755fc6b0-8d38-4961-87b0-628ed97da9ab	ED	{6}	DEPARTEMEN
d71c36fe-9fa9-443f-85bc-3925009de9bf	c93a8fb6-719b-45c1-a38c-281de0c6ac9e	HC	{4}	DEPARTEMEN
0929cebb-b4d8-415c-9371-80c1917a27df	c93a8fb6-719b-45c1-a38c-281de0c6ac9e	FD	{4}	DEPARTEMEN
d5ef64cc-ef43-499c-a11e-a6f9eb8e324b	673913b3-649c-49a1-8cf5-38a114bf21d2	IZ	{6}	DEPARTEMEN
4a3eb3b7-6801-4ce7-9f4a-7df13eeac0ba	980caabb-5b5f-48c3-9ff9-1c5825b38cee	HF	{4,6}	DEPARTEMEN
07400591-fa33-4105-96ac-c578a644f36f	6f9b9873-fcc4-46b0-80c7-04ff302f347f	HF	{4,6}	DEPARTEMEN
223d2990-a785-4fe1-91b1-028b5a9152d1	9686b187-d283-4273-a490-0881cd39874c	IZ	{2}	DEPARTEMEN
4b5e236f-09a8-445a-8198-0fa60b56c0a9	d4cc0c45-ed47-4c1b-a887-0945310b8f6b	IZ	{6}	DEPARTEMEN
46a03eca-e113-40a2-916b-2773cf5de23b	1e33824f-eab2-4ffb-aa98-fbcfda31cba0	AI	{6}	DEPARTEMEN
08a035dc-0492-4175-9863-2b9adcec4d6e	546cbaf8-bfce-4c7d-a8e1-0119828f0470	HC	{4,6}	DEPARTEMEN
6ede7b01-c8b9-43e3-bc36-120a9879e7f8	a6d96fd4-1be4-4c56-9561-a1752a7c8b14	FD	{4}	DEPARTEMEN
a2d20ff2-a258-41c0-b63f-2dde9d55f1fa	e7799db8-cc81-4e4a-bc28-160b9bdc7a9a	FD	{4}	DEPARTEMEN
\.


--
-- TOC entry 4916 (class 0 OID 27105)
-- Dependencies: 224
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id_user, username, password) FROM stdin;
0bf6cb76-2e34-49d2-8da8-d355fcccbedd	admin	$2b$10$UQl11jjwbh6va6S.7iSlouRhvVxbT1J/46iMrZehExRbXesq9CSQC
\.


-- Completed on 2025-04-19 15:07:59

--
-- PostgreSQL database dump complete
--

