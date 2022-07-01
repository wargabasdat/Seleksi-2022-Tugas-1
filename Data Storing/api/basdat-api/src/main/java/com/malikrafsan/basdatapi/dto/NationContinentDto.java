package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Continent;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.stream.Collectors;

public class NationContinentDto {
    @Getter
    @Setter
    private String continent_id;

    @Getter
    @Setter
    private String continent;

    @Getter
    @Setter
    private List<NationDto> nations;

    public NationContinentDto(String continent_id, String continent, List<NationDto> nations) {
        this.continent_id = continent_id;
        this.continent = continent;
        this.nations = nations;
    }

    public NationContinentDto(Continent c) {
        this.continent_id = c.getContinent_id();
        this.continent = c.getContinent();
        this.nations = c.getNations().stream()
                .map(NationDto::new)
                .collect(Collectors.toList());
    }

    @Override
    public String toString() {
        return "ContinentNationDto{" +
                "continent_id='" + continent_id + '\'' +
                ", continent='" + continent + '\'' +
                ", nations='" + nations + '\'' +
                '}';
    }
}
