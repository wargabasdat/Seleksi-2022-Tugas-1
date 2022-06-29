import { INation } from '.';

interface IContinent {
  continent_id?: string;
  continent: string;
  nations: INation[];
}

export default IContinent;