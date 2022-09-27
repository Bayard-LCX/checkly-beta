const { test } = require('@playwright/test')

test('Accept Cookies', async ({page}) => {

    await page.goto(process.env.SITE_URL);

    // Click [aria-label="Accepter \& Fermer\: Accepter notre traitement des données et fermer"]
    await page.locator('[aria-label="Accepter \\& Fermer\\: Accepter notre traitement des données et fermer"]').click();
});
