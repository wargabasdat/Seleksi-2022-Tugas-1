import { ITeam } from "."

interface INation {
  nation: string;
  href?: string;
  teams: ITeam[];
}

export default INation;