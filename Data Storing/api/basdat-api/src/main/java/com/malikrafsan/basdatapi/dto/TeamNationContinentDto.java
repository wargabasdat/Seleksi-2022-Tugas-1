package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Continent;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.stream.Collectors;

public class TeamNationContinentDto {
    @Getter
    @Setter
    private String continent_id;

    @Getter
    @Setter
    private String continent;

    @Getter
    @Setter
    private List<TeamNationDto> teamsNation;

    public TeamNationContinentDto(String continent_id, String continent, List<TeamNationDto> teamsNation) {
        this.continent_id = continent_id;
        this.continent = continent;
        this.teamsNation = teamsNation;
    }

    public TeamNationContinentDto(Continent c) {
        List<TeamNationDto> teamsNation = c.getNations().stream()
                .map(TeamNationDto::new)
                .collect(Collectors.toList());
        this.continent_id = c.getContinent_id();
        this.continent = c.getContinent();
        this.teamsNation = teamsNation;
    }

    @Override
    public String toString() {
        return "TeamNationContinentDto{" +
                "continent_id='" + continent_id + '\'' +
                ", continent='" + continent + '\'' +
                ", teamsNation=" + teamsNation +
                '}';
    }
}
