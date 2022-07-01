package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Nation;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

public class TeamNationDto {
    @Getter
    @Setter
    private String nation_id;

    @Getter
    @Setter
    private String nation;

    @Getter
    @Setter
    private String continent_id;

    @Getter
    @Setter
    private List<TeamDto> teams;

    public TeamNationDto(String nation_id, String nation, String continent_id, List<TeamDto> teams) {
        this.nation_id = nation_id;
        this.nation = nation;
        this.continent_id = continent_id;
        this.teams = teams;
    }

    public TeamNationDto(Nation n) {
        List<TeamDto> teams = n.getTeams().stream()
                .map(TeamDto::new)
                .collect(Collectors.toList());
        this.nation_id = n.getNation_id();
        this.nation = n.getNation();
        this.continent_id = n.getContinent_id();
        this.teams = teams;
    }

    @Override
    public String toString() {
        return "TeamNationDto{" +
                "nation_id='" + nation_id + '\'' +
                ", nation='" + nation + '\'' +
                ", continent_id='" + continent_id + '\'' +
                ", teams=" + teams +
                '}';
    }
}
