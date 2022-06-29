import * as fs from "fs";
import { INation, IContinent } from "../interfaces";

const DATA_PATH = "data/";
const FILE_INPUT = "scrap-result.json";
const FILE_OUTPUT = "process-result.json";

const cleanReservedChars = (data: string) => {
  return data.split("'").join("");
}

const preprocess = (nations: INation[]) => {
  return nations.map((nation) => {
    return {
      nation: nation.nation,
      teams: nation.teams.map((team) => {
        return {
          name: team.name,
          continent: team.continent,
          worldRanking: team.worldRanking,
          continentRanking: team.continentRanking,
          nationRanking: team.nationRanking,
        };
      }
      )
    }
  })
}

const cleansing = (preprocessedData: INation[]) => {
  return preprocessedData.filter((nation) => {
    return nation.teams.length !== 0;
  })
}

const normalize = (cleanedData: INation[]) => {
  const continents = new Set();

  cleanedData.forEach((nation) => {
    nation.teams.forEach((team) => {
      continents.add(team.continent);
    })
  });

  const continentsArray = Array.from(continents).map((continent) => {
    return {
      continent: continent as string,
      nations: cleanedData.filter((nation) => {
        return nation.teams[0].continent === continent;
      }).map((nation) => {
        return {
          nation: nation.nation,
          teams: nation.teams.map((team) => {
            return {
              name: team.name,
              worldRanking: team.worldRanking,
              continentRanking: team.continentRanking,
              nationRanking: team.nationRanking,
            }
          })
        }
      })
    }
  });
  return continentsArray;
}

const transformAttrName = (normalizedData: IContinent[]) => {
  return normalizedData.map((continent) => {
    return {
      continent: continent.continent,
      nations: continent.nations.map((nation) => {
        return {
          nation: nation.nation,
          teams: nation.teams.map((team) => {
            return {
              team: team.name,
              worldRanking: team.worldRanking,
              continentRanking: team.continentRanking,
              nationRanking: team.nationRanking,
            }
          })
        }
      })
    }
  })
}

const main = () => {
  const file = fs.readFileSync(DATA_PATH + FILE_INPUT, { encoding: "utf8", flag: "r" });
  const data: INation[] = JSON.parse(cleanReservedChars(file));

  const preprocessedData = preprocess(data);
  const cleanedData = cleansing(preprocessedData);
  const normalizedData = normalize(cleanedData);
  const transformedData = transformAttrName(normalizedData);

  fs.writeFileSync(DATA_PATH + FILE_OUTPUT, JSON.stringify(transformedData));
}

main()