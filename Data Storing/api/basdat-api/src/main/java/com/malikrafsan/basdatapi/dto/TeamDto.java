package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Team;
import lombok.Getter;
import lombok.Setter;

public class TeamDto {
    @Getter
    @Setter
    private String team_id;

    @Getter
    @Setter
    private String team;

    @Getter
    @Setter
    private String nation_id;

    @Getter
    @Setter
    private Integer world_ranking;

    @Getter
    @Setter
    private Integer continent_ranking;

    @Getter
    @Setter
    private Integer nation_ranking;

    public TeamDto(String team_id, String team, String nation_id, Integer world_ranking, Integer continent_ranking, Integer nation_ranking) {
        this.team_id = team_id;
        this.team = team;
        this.nation_id = nation_id;
        this.world_ranking = world_ranking;
        this.continent_ranking = continent_ranking;
        this.nation_ranking = nation_ranking;
    }

    public TeamDto(Team t) {
        this.team_id = t.getTeam_id();
        this.team = t.getTeam();
        this.nation_id = t.getNation_id();
        this.world_ranking = t.getWorld_ranking();
        this.continent_ranking = t.getContinent_ranking();
        this.nation_ranking = t.getNation_ranking();
    }

    @Override
    public String toString() {
        return "TeamDto{" +
                "team_id='" + team_id + '\'' +
                ", team='" + team + '\'' +
                ", nation_id='" + nation_id + '\'' +
                ", world_ranking=" + world_ranking +
                ", continent_ranking=" + continent_ranking +
                ", nation_ranking=" + nation_ranking +
                '}';
    }
}
