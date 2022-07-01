package com.malikrafsan.basdatapi.service;

import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.entity.Nation;
import com.malikrafsan.basdatapi.repository.NationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import static java.util.stream.Collectors.toList;

@Service
public class NationService {
    @Autowired
    private NationRepository nationRepository;
    @Autowired
    private ContinentService continentService;

    public List<Nation> getAllNation() {
        return StreamSupport.stream(nationRepository.findAll().spliterator(), false).collect(Collectors.toList());
    }

    public Optional<Nation> getNationById(String id) {
        return nationRepository.findById(id);
    }

    public Optional<Nation> getNationByName(String name) {
        List<Nation> actualList = StreamSupport.stream(nationRepository.findAll().spliterator(), false).collect(Collectors.toList());

        return actualList.stream()
                .filter(nation -> nation.getNation().equals(name))
                .findFirst();
    }

    public List<Nation> getNationByContinent(String continent) {
        Optional<Continent> c = continentService.getContinentByName(continent);
        List<Nation> actualList;

        if (c.isPresent()) {
            actualList = this.getAllNation().stream().filter(nation -> nation.getContinent_id().equals(c.get().getContinent_id())).collect(Collectors.toList());
        } else {
            actualList = new ArrayList<>();
        }

        return actualList;
    }
}
