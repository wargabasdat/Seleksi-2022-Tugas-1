import puppeteer from "puppeteer"
import { getProductData } from "./WardahDetailPage.js"
import { scapeProductList } from "./WardahProductList.js"
import { scrapeProductCategory } from "./WardahShopCategory.js";
import fs, { appendFile } from "node:fs"
// server

import express, { json, urlencoded } from "express";
import cors from 'cors';


const browser = await puppeteer.launch({
    headless: false
});

const category_url = (await scrapeProductCategory("https://www.wardahbeauty.com/", browser)).slice(2, 3);

let allProducts = [];

for (let l of category_url) {
    const data = await scapeProductList(l, browser);
    allProducts = allProducts.concat(data);
}

const allProductDetail = [];

for (let link of allProducts) {
    const data = await getProductData(link, browser);

    allProductDetail.push(data);
}

fs.writeFileSync("data/wardah.json", JSON.stringify(allProductDetail))

browser.close();

/**
 * Endpoint for storing all product
 * @param {Request} req Express.js Request object
 * @param {Response} res Express.js Response object
 */

function storingAllProduct(req, res) {
    res.json({
        status: "success",
        message: "display data wardah",
        allProductDetail
    })
}

const app = express();
app.use(cors());
app.use(json());
app.use(urlencoded({ extended: true }));

app.get("/", (req, res) => {
    res.json({ message: "Welcome to Wardah Scrapper" });
});

app.get("/datawardah", storingAllProduct);

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});