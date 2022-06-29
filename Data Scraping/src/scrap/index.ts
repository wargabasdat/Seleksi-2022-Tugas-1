import * as fs from "fs";
import * as puppeteer from "puppeteer";

const DATA_PATH = "data/";
const FOLDER_NAME_NATION = "final-nation";

const ARGS = process.argv.slice(2);
const PRINT_LOG = ARGS.includes("--print-log");
const OPEN_BROWSER = ARGS.includes("--open-browser");
const WRITE_INTERMEDIATE = ARGS.includes("--write-intermediate");

const logger = (...args: any[]) => {
  if (PRINT_LOG) {
    console.log(...args);
  }
};

const writeFile = (filename: string, content: string) => {
  if (WRITE_INTERMEDIATE) {
    fs.writeFileSync(filename, content);
  }
}

const main = async () => {
  if (!fs.existsSync(DATA_PATH + FOLDER_NAME_NATION) && WRITE_INTERMEDIATE) {
    fs.mkdirSync(DATA_PATH + FOLDER_NAME_NATION);
  }

  logger("start opening browser");
  const browser = await puppeteer.launch({
    headless: !OPEN_BROWSER,
  });
  logger("browser opened");
  const mainPage = await browser.newPage();
  logger("main page opened");
  await mainPage.setViewport({ width: 1200, height: 600 });
  mainPage.setDefaultNavigationTimeout(0);
  await mainPage.goto("https://footballdatabase.com/clubs-index"),
  {
    waitUntil: "domcontentloaded",
    timeout: 0,
  };
  logger("main page loaded");

  const nations = await mainPage.$$eval("#all > * > a", (elNations) =>
    elNations.map((elNation: HTMLAnchorElement) => {
      return {
        name: elNation.innerText,
        href: elNation.href,
      };
    })
  );
  logger(`finish get all ${nations.length} nation name and href`);

  writeFile(DATA_PATH + "final-nations.json", JSON.stringify(nations));

  const data = await Promise.all(
    nations.map(async (nation, idx) => {
      logger(
        `${idx + 1}/${nations.length}. opening page for nation: ${nation.name}`
      );
      const nationPage = await browser.newPage();
      nationPage.setDefaultNavigationTimeout(0);
      await nationPage.setViewport({ width: 1200, height: 600 });
      await nationPage.goto(nation.href, {
        waitUntil: "domcontentloaded",
        timeout: 0,
      });

      const rawTeams = await nationPage.$$eval(
        "#wrap > div.container.mainfdb > div > div > div.clubbrowser > a.clubbrowser-club",
        (elTeams) => {
          return elTeams.map((elTeam: HTMLAnchorElement) => {
            return {
              name: elTeam.innerText,
              href: elTeam.href,
            };
          });
        }
      );

      await nationPage.close();

      if (!rawTeams || !rawTeams.length) {
        logger(`${nation.name} has no teams`);
        return { nation: nation.name, href: nation.href, teams: [] };
      }

      logger(
        `${idx + 1}/${nations.length}. finish get all ${rawTeams.length
        } team name and href`
      );

      const ret = {
        nation: nation.name,
        href: nation.href,
        teams: rawTeams,
      };
      logger(ret);
      return ret;
    })
  );

  logger("finish get all team data per nation");

  let finalData = [];
  let increment = 0;
  for (const nation of data) {
    increment++;
    logger(
      `fetch team in nation ${JSON.stringify(
        nation
      )} with order: ${increment}/${data.length}`
    );
    const teams = await Promise.all(
      nation.teams.map(async (team, idx) => {
        logger(
          `${idx + 1}/${nation.teams.length} opening page for team: ${team.name
          }`
        );
        const teamPage = await browser.newPage();
        teamPage.setDefaultNavigationTimeout(0);
        await teamPage.setViewport({ width: 1200, height: 600 });
        await teamPage.goto(team.href, {
          waitUntil: "networkidle2",
          timeout: 0,
        });

        const textRankings = await teamPage.$$eval(
          "#wrap > div.container.mainfdb > div:nth-child(1) > div > .label",
          (elRankings) =>
            elRankings.map((elRanking: HTMLAnchorElement) =>
              elRanking.innerText.split(" Ranking: ")
            )
        );

        await teamPage.close();
        logger(
          `${idx + 1}/${nation.teams.length} finish get all ${textRankings.length
          } ranking text`
        );

        const ret = {
          name: team.name,
          href: team.href,
          continent: textRankings[1][0],
          worldRanking: textRankings[0][1],
          continentRanking: textRankings[1][1],
          nationRanking: textRankings[2][1],
        };
        logger(ret);
        return ret;
      })
    );
    const ret = {
      ...nation,
      teams,
    };
    writeFile(DATA_PATH + `final-nation/${ret.nation}.json`, JSON.stringify(ret));
    finalData.push(ret);
    logger(
      "finish get all team data per nation " + JSON.stringify(nation)
    );
  }
  logger("start writing for all data to json file");
  writeFile(DATA_PATH + "scrap-result.json", JSON.stringify(finalData));
  await mainPage.close();
  await browser.close();
};

main();
