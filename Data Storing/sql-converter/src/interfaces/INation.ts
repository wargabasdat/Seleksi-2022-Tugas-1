import { ITeam } from "."

interface INation {
  nation_id?: string;
  nation: string;
  teams: ITeam[];
}

export default INation;