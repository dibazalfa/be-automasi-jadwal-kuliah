const express = require('express');
const dotenv = require('dotenv');

const app = express();

dotenv.config();

const PORT = process.env.PORT;

app.use(express.json());

const dosenController = require('./dosen/dosen.controller');
const matkulController = require('./mata_kuliah/matkul.controller');
const hindariController = require('./jadwal_hindari/hindari.controller');

app.use('/dosen', dosenController)
app.use('/mata_kuliah', matkulController)
app.use('/jadwal_hindari', hindariController)

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});