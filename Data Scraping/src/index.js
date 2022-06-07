import puppeteer from "puppeteer"
import { getProductData } from "./WardahDetailPage.js"
import { scapeProductList } from "./WardahProductList.js"

// const list = await scapeProductList("https://www.wardahbeauty.com/id/product/list/skincare");
// console.log(list);

const data = await getProductData("https://www.wardahbeauty.com/id/product/make-up/colorfit-last-all-day-lip-paint-around-the-world?ref=https://www.wardahbeauty.com/id/product/list/make-up/sort/all?page=1");
console.log(data)