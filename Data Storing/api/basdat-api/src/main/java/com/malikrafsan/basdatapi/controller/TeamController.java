package com.malikrafsan.basdatapi.controller;

import com.malikrafsan.basdatapi.dto.TeamDto;
import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.entity.Nation;
import com.malikrafsan.basdatapi.entity.Team;
import com.malikrafsan.basdatapi.repository.TeamRepository;
import com.malikrafsan.basdatapi.service.ContinentService;
import com.malikrafsan.basdatapi.service.NationService;
import com.malikrafsan.basdatapi.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import static java.util.stream.Collectors.toList;

@Controller
@RequestMapping(path="/team")
public class TeamController {
    @Autowired
    private TeamService teamService;

    @GetMapping
    public @ResponseBody
    ResponseEntity<?> getTeam(@RequestParam(value="continent", required = false, defaultValue = "") String continent, @RequestParam(value="nation", required = false, defaultValue = "") String nation) {
        List<Team> actualList;

        if (continent.isEmpty() && nation.isEmpty()) {
            actualList = teamService.getAllTeam();
        } else if (continent.isEmpty()) {
            actualList = teamService.getTeamByNation(nation);
        } else if (nation.isEmpty()) {
            actualList = teamService.getTeamByContinent(continent);
        } else {
            actualList = teamService.getTeamByContinentAndNation(continent, nation);
        }

        if (actualList.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(actualList.stream().map(TeamDto::new).collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping(path="/{team}")
    public @ResponseBody
    ResponseEntity<?> getTeamByName(@PathVariable(value="team") String team) {
        Optional<Team> t = teamService.getTeamByName(team);

        if (t.isPresent()) {
            return new ResponseEntity<>(new TeamDto(t.get()), HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
