package com.malikrafsan.basdatapi.entity;

import lombok.Getter;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
public class Continent {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Getter
    private String continent_id;

    @Getter
    private String continent;

    @OneToMany(targetEntity = Nation.class, mappedBy = "continent_id", orphanRemoval = false, fetch = FetchType.LAZY)
    @Getter
    private List<Nation> nations;
}
