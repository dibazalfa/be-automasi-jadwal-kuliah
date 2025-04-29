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

// Logging middleware
app.use((req, res, next) => {
    console.log(`${req.method} ${req.url}`);
    next();
});

const authController = require('./auth/auth.controller');
const dosenController = require('./dosen/dosen.controller');
const matkulController = require('./mata_kuliah/matkul.controller');
const hindariController = require('./jadwal_hindari/hindari.controller');
const mkDosenController = require('./mk_kelas_dosen/mk_dosen.controller');
const ruanganController = require('./ruangan/ruangan.controller');
const jadwalController = require('./jadwal/jadwal.controller');

app.use('/auth', authController)
app.use('/dosen', dosenController)
app.use('/mata_kuliah', matkulController)
app.use('/jadwal_hindari', hindariController)
app.use('/mk_dosen', mkDosenController)
app.use('/ruangan', ruanganController)
app.use('/jadwal', jadwalController)

// 404 handler
app.use((req, res) => {
    console.log(`404: ${req.method} ${req.url}`);
    res.status(404).json({
        error: 'Not Found',
        message: `Cannot ${req.method} ${req.url}`
    });
});

// Error handler
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json({
        error: 'Internal Server Error',
        message: err.message
    });
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});