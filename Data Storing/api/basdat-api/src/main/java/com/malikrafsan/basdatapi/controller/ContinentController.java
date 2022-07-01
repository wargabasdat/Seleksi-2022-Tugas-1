package com.malikrafsan.basdatapi.controller;

import com.malikrafsan.basdatapi.dto.ContinentDto;
import com.malikrafsan.basdatapi.dto.NationContinentDto;
import com.malikrafsan.basdatapi.dto.TeamNationContinentDto;
import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.repository.ContinentRepository;
import com.malikrafsan.basdatapi.service.ContinentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

import static java.util.stream.Collectors.toList;

@Controller
@RequestMapping(path="/continent")
public class ContinentController {
    @Autowired
    private ContinentService continentService;

    @GetMapping
    public @ResponseBody ResponseEntity<?> getAllContinent(@RequestParam(value="with_nation", required=false, defaultValue = "true") boolean withNation, @RequestParam(value="with_team", required=false, defaultValue = "true") boolean withTeam) {
        List<Continent> actualList = continentService.getAllContinent();

        if (withNation && withTeam) {
            return new ResponseEntity<>(actualList.stream().map(TeamNationContinentDto::new).collect(toList()), HttpStatus.OK);
        } else if (withNation) {
            return new ResponseEntity<>(actualList.stream().map(NationContinentDto::new).collect(toList()), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(actualList.stream().map(ContinentDto::new).collect(toList()), HttpStatus.OK);
        }
    }

    @GetMapping(path="/{continent}")
    public @ResponseBody
    ResponseEntity<?> getContinentByName(@PathVariable(value="continent") String continent, @RequestParam(value="with_nation", required=false, defaultValue = "true") boolean withNation, @RequestParam(value="with_team", required=false) boolean withTeam) {
        Optional<Continent> c = continentService.getContinentByName(continent);

        if (c.isPresent()) {
            Continent actualContinent = c.get();
            if (withNation && withTeam) {
                return new ResponseEntity<>(new TeamNationContinentDto(actualContinent), HttpStatus.OK);
            } else if (withNation) {
                return new ResponseEntity<>(new NationContinentDto(actualContinent), HttpStatus.OK);
            } else {
                return new ResponseEntity<>(new ContinentDto(actualContinent), HttpStatus.OK);
            }
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
