import puppeteer from "puppeteer"
import { getProductData } from "./WardahDetailPage.js"
import { scapeProductList } from "./WardahProductList.js"
import { scrapeProductCategory } from "./WardahShopCategory.js";
import fs from "node:fs"

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