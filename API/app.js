const tvsrouter = require('./utils/router');
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
require('dotenv').config()

const app = express();

const port = process.env.PORT || 4000

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

app.listen(port, () => {
    console.log('The app is listening on port ' + port)
});
