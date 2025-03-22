const express = require('express');
const dotenv = require('dotenv');

const app = express();

dotenv.config();

const PORT = process.env.PORT;

app.use(express.json());

const authController = require('./auth/auth.controller');
const dosenController = require('./dosen/dosen.controller');
const matkulController = require('./mata_kuliah/matkul.controller');
const hindariController = require('./jadwal_hindari/hindari.controller');
const mkDosenController = require('./mk_kelas_dosen/mk_dosen.controller');
const ruanganController = require('./ruangan/ruangan.controller');

app.use('/auth', authController)
app.use('/dosen', dosenController)
app.use('/mata_kuliah', matkulController)
app.use('/jadwal_hindari', hindariController)
app.use('/mk_dosen', mkDosenController)
app.use('/ruangan', ruanganController)

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});