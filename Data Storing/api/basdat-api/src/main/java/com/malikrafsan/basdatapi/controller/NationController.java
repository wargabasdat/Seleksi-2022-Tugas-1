package com.malikrafsan.basdatapi.controller;

import com.malikrafsan.basdatapi.dto.NationDto;
import com.malikrafsan.basdatapi.dto.TeamDto;
import com.malikrafsan.basdatapi.dto.TeamNationDto;
import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.entity.Nation;
import com.malikrafsan.basdatapi.repository.NationRepository;
import com.malikrafsan.basdatapi.service.ContinentService;
import com.malikrafsan.basdatapi.service.NationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import static java.util.stream.Collectors.toList;

@Controller
@RequestMapping(path="/nation")
public class NationController {
    @Autowired
    private NationService nationService;
    @Autowired
    private ContinentService continentService;

    @GetMapping
    public @ResponseBody
    ResponseEntity<?> getNation(@RequestParam(value="continent", required=false, defaultValue = "") String continent, @RequestParam(value="with_team", required=false, defaultValue = "true") boolean withTeam) {
        List<Nation> actualList;

        if (continent.isEmpty()) {
            actualList = nationService.getAllNation();
        } else {
            actualList = nationService.getNationByContinent(continent);
        }

        if (withTeam) {
            return new ResponseEntity<>(actualList.stream().map(TeamNationDto::new).collect(Collectors.toList()), HttpStatus.OK);
        }

        return new ResponseEntity<>(actualList.stream().map(NationDto::new).collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping(path="/{nation}")
    public @ResponseBody
    ResponseEntity<?> getNationByName(@PathVariable(value="nation") String nation, @RequestParam(value="with_team", required=false, defaultValue = "true") boolean withTeam) {
        Optional<Nation> n = nationService.getNationByName(nation);

        if (n.isPresent()) {
            Nation actualNation = n.get();
            if (withTeam) {
                return new ResponseEntity<>(new TeamNationDto(actualNation), HttpStatus.OK);
            } else {
                return new ResponseEntity<>(new NationDto(actualNation), HttpStatus.OK);
            }
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
