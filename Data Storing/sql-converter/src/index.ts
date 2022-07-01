import * as fs from "fs";
import { v4 as uuidv4 } from "uuid";
import { IContinent } from "./interfaces";

const DATA_PATH = "../../Data Scraping/data/";
const FILE_NAME = "process-result.json";
const FILE_OUTPUT = "sql/data.sql";

const CREATE_TABLE_SCRIPT = () => {
  return `
CREATE TABLE IF NOT EXISTS continent (
  continent_id VARCHAR(255) PRIMARY KEY,
  continent VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  UNIQUE (continent)
);

CREATE TABLE IF NOT EXISTS nation (
  nation_id VARCHAR(255) PRIMARY KEY,
  nation VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  continent_id VARCHAR(255) NOT NULL,
  UNIQUE (nation, continent_id)
);

CREATE TABLE IF NOT EXISTS team (
  team_id VARCHAR(255) PRIMARY KEY,
  team VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  nation_id VARCHAR(255) NOT NULL,
  world_ranking INTEGER NOT NULL,
  continent_ranking INTEGER NOT NULL,
  nation_ranking INTEGER NOT NULL,
  UNIQUE (team, nation_id)
);
  `
}

const generateID = (continents: IContinent[]) => {
  return continents.map(cont => {
    return {
      continent_id: uuidv4() as string,
      continent: cont.continent,
      nations: cont.nations.map(nation => {
        return {
          nation_id: uuidv4() as string,
          nation: nation.nation,
          teams: nation.teams.map(team => {
            return {
              team_id: uuidv4() as string,
              team: team.team,
              worldRanking: team.worldRanking,
              continentRanking: team.continentRanking,
              nationRanking: team.nationRanking
            }
          })
        }
      })
    }
  })
}

const insertContinent = (continents: IContinent[]) => {
  const INSERT_SCRIPT = "INSERT INTO continent (continent_id, continent) VALUES ";

  return INSERT_SCRIPT + continents.map(cont => {
    return `('${cont.continent_id}', '${cont.continent}')`
  }).join(',') + ";";
}

const insertNation = (continents: IContinent[]) => {
  const INSERT_SCRIPT = "INSERT INTO nation (nation_id, nation, continent_id) VALUES ";

  return INSERT_SCRIPT + continents.map(cont => {
    return cont.nations.map(nation => {
      return `('${nation.nation_id}', '${nation.nation}', '${cont.continent_id}')`
    }).join(",")
  }).join(",") + ";";
}

const insertTeam = (continents: IContinent[]) => {
  const INSERT_SCRIPT = "INSERT INTO team (team_id, team, nation_id, world_ranking, continent_ranking, nation_ranking) VALUES ";

  return INSERT_SCRIPT + continents.map(cont => {
    return cont.nations.map(nation => {
      return nation.teams.map(team => {
        return `('${team.team_id}', '${team.team}', '${nation.nation_id}', ${team.worldRanking}, ${team.continentRanking}, ${team.nationRanking})`
      }).join(",")
    }).join(",")
  }).join(",") + ";";
}

const main = () => {
  const file = fs.readFileSync(DATA_PATH + FILE_NAME, { encoding: "utf8", flag: "r" });

  const data: IContinent[] = JSON.parse(file);
  const dataWithId = generateID(data);

  const script = `
${CREATE_TABLE_SCRIPT()}

${insertContinent(dataWithId)}

${insertNation(dataWithId)}

${insertTeam(dataWithId)}
  `;

  fs.writeFileSync(FILE_OUTPUT, script);
}

main()