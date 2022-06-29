package com.malikrafsan.basdatapi.service;

import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.entity.Nation;
import com.malikrafsan.basdatapi.entity.Team;
import com.malikrafsan.basdatapi.repository.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import static java.util.stream.Collectors.toList;

@Service
public class TeamService {
    @Autowired
    private TeamRepository teamRepository;
    @Autowired
    private NationService nationService;
    @Autowired
    private ContinentService continentService;

    public List<Team> getAllTeam() {
        return StreamSupport.stream(teamRepository.findAll().spliterator(), false).collect(Collectors.toList());
    }

    public Optional<Team> getTeamById(String id) {
        return teamRepository.findById(id);
    }

    public Optional<Team> getTeamByName(String name) {
        List<Team> actualList = StreamSupport.stream(teamRepository.findAll().spliterator(), false).collect(Collectors.toList());

        return actualList.stream()
                .filter(team -> team.getTeam().equals(name))
                .findFirst();
    }

    public List<Team> getTeamByNation(String nation) {
        Optional<Nation> n = nationService.getNationByName(nation);

        if (n.isPresent()) {
            return this.getAllTeam().stream().filter(t -> t.getNation_id().equals(n.get().getNation_id())).collect(Collectors.toList());
        } else {
            return new ArrayList<>();
        }
    }

    public List<Team> getTeamByContinent(String continent) {
        List<Nation> nations = nationService.getNationByContinent(continent);
        Set<String> nationIds = nations.stream().map(Nation::getNation_id).collect(Collectors.toSet());

        return this.getAllTeam().stream().filter(t -> nationIds.contains(t.getNation_id())).collect(Collectors.toList());
    }

    public List<Team> getTeamByContinentAndNation(String continent, String nation) {
        Optional<Nation> n = nationService.getNationByName(nation);
        Optional<Continent> c = continentService.getContinentByName(continent);

        if (n.isPresent() && c.isPresent() && c.get().getContinent_id().equals(n.get().getContinent_id())) {
            return this.getAllTeam().stream().filter(t -> t.getNation_id().equals(n.get().getNation_id())).collect(Collectors.toList());
        } else {
            return new ArrayList<>();
        }
    }
}
