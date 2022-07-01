package com.malikrafsan.basdatapi.entity;

import lombok.Getter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
public class Nation {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    private String nation_id;

    @Getter
    private String nation;

    @Getter
    private String continent_id;

//    @Getter
//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "continent_id", insertable = false, updatable = false)
//    @Fetch(FetchMode.JOIN)
//    private Continent continent;

    @OneToMany(targetEntity = Team.class, mappedBy = "nation_id", orphanRemoval = false, fetch = FetchType.LAZY)
    @Getter
    private List<Team> teams;
}
