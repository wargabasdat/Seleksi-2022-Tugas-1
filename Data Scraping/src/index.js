const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => res.send("Hello apa kabar"));

app.get("/makan", (req, res) => res.send("uda makan"));

app.listen(port, () => console.log("aplikasi berjalan"));