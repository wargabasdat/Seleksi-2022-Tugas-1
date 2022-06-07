function splitComma(strCategory) {
    return strCategory.split(",").map(el => el.trim());
}

function splitNewLine(strHowTo) {
    const list = strHowTo.split(/[\n\t]/).map(el => el.trim());
    const res = [];

    for (let i of list) {
        if (i == '') break;
        res.push(i)
    }
    return res
}

export async function getProductData(url, browser) {
    const page = await browser.newPage();

    await page.goto(url, {
        waitUntil: "domcontentloaded"
    });

    const kategoriEl = await page.$(".banner .text-solidgrey");
    const kategori = await kategoriEl.evaluate(el => el.innerText);

    const gambarEl = await page.$("#slider-product img");
    const gambar = await gambarEl.evaluate(el => el.src);

    const subKategoriEl = await page.$(".col-lg-5.ps-xxl-5 h5");
    const subKategori = splitComma(await subKategoriEl.evaluate(el => el.innerText));

    const namaEl = await page.$("h1");
    const namaElKategori = await namaEl.evaluate(el => el.innerHTML);

    const hargaEl = await page.$(".detail-price");
    const harga = !hargaEl ? null : await hargaEl.evaluate(el => el.innerText)

    const aboutEl = await page.$("#nav-about p");
    const about = await aboutEl.evaluate(el => el.innerText);

    const howtoEl = await page.$("#nav-howto");
    const howto = splitNewLine(await howtoEl.evaluate(el => el.innerText.trim()));

    const ingredientEl = await page.$("#nav-ingredient")
    const ingredient = splitComma(await ingredientEl.evaluate(el => el.innerText))

    const selectEl = await page.$$("select option");
    const select = selectEl.map(el => el.evaluate(el => el.innerText));
    const variants = await Promise.all(select);

    await page.close();

    return {
        category: kategori,
        image: gambar,
        sub_category: subKategori,
        product_name: namaElKategori,
        price: harga,
        about: about,
        how_to: howto,
        ingredients: ingredient,
        variant: variants
    }
}