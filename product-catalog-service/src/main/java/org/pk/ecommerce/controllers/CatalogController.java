package org.pk.ecommerce.controllers;

import org.pk.ecommerce.entities.Catalog;
import org.pk.ecommerce.repositories.CatalogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/catalog")
public class CatalogController {

    @Autowired
    private CatalogRepository repository;

    @Value("${test.message:Hello}")
    private String message;

    @GetMapping
    public List<Catalog> getCatalog() {
        return repository.findAll();
    }

    @GetMapping("/props")
    public String getMessage() {
        return message;
    }
}
