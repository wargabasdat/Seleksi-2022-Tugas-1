import puppeteer from "puppeteer"

export async function scapeProductList(link) {
    const browser = await puppeteer.launch({
        headless: false
    });

    const page = await browser.newPage();
    await page.goto(link, {
        waitUntil: "networkidle0"
    });

    while (true) {
        const button = await page.waitForSelector("#pagination-products", {
            timeout: 1000
        });

        const isHidden = await button.evaluate(el => el.classList.contains("d-none"))
        if (isHidden) break;

        await button.evaluate(el => el.click());
    }

    console.log("Semua pagination berhasil dibuka")
    const elements = await page.$$("#product-lists-landing a");

    const result = elements.map(async el => {
        return await el.evaluate(el => el.href);
    })

    const hasil = await Promise.all(result);
    browser.close();
    return hasil;
}