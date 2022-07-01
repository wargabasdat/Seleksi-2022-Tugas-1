package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Continent;
import lombok.Getter;
import lombok.Setter;

public class ContinentDto {
    @Getter
    @Setter
    private String continent_id;

    @Getter
    @Setter
    private String continent;

    public ContinentDto(String continent_id, String continent) {
        this.continent_id = continent_id;
        this.continent = continent;
    }

    public ContinentDto(Continent c) {
        this.continent_id = c.getContinent_id();
        this.continent = c.getContinent();
    }

    @Override
    public String toString() {
        return "ContinentDto{" +
                "continent_id='" + continent_id + '\'' +
                ", continent='" + continent + '\'' +
                '}';
    }
}
