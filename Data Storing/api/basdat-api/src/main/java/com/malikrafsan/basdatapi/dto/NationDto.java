package com.malikrafsan.basdatapi.dto;

import com.malikrafsan.basdatapi.entity.Nation;
import lombok.Getter;
import lombok.Setter;

public class NationDto {
    @Getter
    @Setter
    private String nation_id;

    @Getter
    @Setter
    private String nation;

    @Getter
    @Setter
    private String continent_id;

    public NationDto(String nation_id, String nation, String continent_id) {
        this.nation_id = nation_id;
        this.nation = nation;
        this.continent_id = continent_id;
    }

    public NationDto(Nation n) {
        this.nation_id = n.getNation_id();
        this.nation = n.getNation();
        this.continent_id = n.getContinent_id();
    }

    @Override
    public String toString() {
        return "NationDto{" +
                "nation_id='" + nation_id + '\'' +
                ", nation='" + nation + '\'' +
                ", continent_id='" + continent_id + '\'' +
                '}';
    }
}
