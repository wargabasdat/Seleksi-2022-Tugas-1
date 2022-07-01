package com.malikrafsan.basdatapi.service;

import com.malikrafsan.basdatapi.entity.Continent;
import com.malikrafsan.basdatapi.repository.ContinentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import static java.util.stream.Collectors.toList;

@Service
public class ContinentService {
    @Autowired
    private ContinentRepository continentRepository;

    public List<Continent> getAllContinent() {
        return StreamSupport.stream(continentRepository.findAll().spliterator(), false).collect(Collectors.toList());
    }

    public Optional<Continent> getContinentById(String id) {
        return continentRepository.findById(id);
    }

    public Optional<Continent> getContinentByName(String name) {
        List<Continent> actualList = StreamSupport.stream(continentRepository.findAll().spliterator(), false).collect(Collectors.toList());

        return actualList.stream()
                .filter(continent -> continent.getContinent().equals(name))
                .findFirst();
    }
}
