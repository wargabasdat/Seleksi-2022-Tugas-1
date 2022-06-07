import puppeteer from "puppeteer";

export async function scrapeProductCategory(link, browser) {
    const page = await browser.newPage();
    await page.goto(link, {
        waitUntil: "load"
    });

    const list = page.$$(".dropdown-menu a");
    const categoryLink = (await list).map(el => el.evaluate(el => el.href))

    const result = await Promise.all(categoryLink);
    await page.close();

    return result;
}