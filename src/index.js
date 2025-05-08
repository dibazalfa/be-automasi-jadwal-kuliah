const express = require('express');
const dotenv = require('dotenv');
const cors = require('cors');

const app = express();

app.use(cors({
    origin: '*',
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    allowedHeaders: '*',
    optionsSuccessStatus: 204
}));

dotenv.config();

const PORT = process.env.PORT;

app.use(express.json());

const authController = require('./auth/auth.controller');
const userController = require('./user/user.controller');
const dosenController = require('./dosen/dosen.controller');
const matkulController = require('./mata_kuliah/matkul.controller');
const hindariController = require('./jadwal_hindari/hindari.controller');
const mkDosenController = require('./mk_kelas_dosen/mk_dosen.controller');
const ruanganController = require('./ruangan/ruangan.controller');
const jadwalController = require('./jadwal/jadwal.controller');

app.use('/auth', authController)
app.use('/user', userController)
app.use('/dosen', dosenController)
app.use('/mata_kuliah', matkulController)
app.use('/jadwal_hindari', hindariController)
app.use('/mk_dosen', mkDosenController)
app.use('/ruangan', ruanganController)
app.use('/jadwal', jadwalController)

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});