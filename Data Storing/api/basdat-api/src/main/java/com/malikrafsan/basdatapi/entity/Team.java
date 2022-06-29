package com.malikrafsan.basdatapi.entity;

import lombok.Getter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

@Entity
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    private String team_id;

    @Getter
    private String team;

    @Getter
    private String nation_id;

//    @Getter
//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "nation_id", insertable = false, updatable = false)
//    @Fetch(FetchMode.JOIN)
//    private Nation nation;

    @Getter
    private Integer world_ranking;

    @Getter
    private Integer continent_ranking;

    @Getter
    private Integer nation_ranking;
}
