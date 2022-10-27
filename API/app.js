const tvsrouter = require('./utils/router');
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
require('dotenv').config()

const app = express();

app.use(bodyParser.json());

mongoose.connect(
    process.env.MONGO_URI,
    {
        useNewUrlParser: true, 
        useUnifiedTopology: true
    },
    () => console.log('Connected to TV Shows DB!')
    );

app.get('/', (req,res) => {
    res.send("TV Shows API");
});

app.use('/tvshows', tvsrouter);

app.listen(process.env.PORT, () => {
    console.log('The app is listening on port ' + process.env.PORT)
});
