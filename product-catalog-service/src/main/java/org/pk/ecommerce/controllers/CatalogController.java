package org.pk.ecommerce.controllers;

import lombok.extern.slf4j.Slf4j;
import org.pk.ecommerce.entities.Catalog;
import org.pk.ecommerce.repositories.CatalogRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RefreshScope
@Slf4j
@RestController
@RequestMapping("/catalog")
public class CatalogController {

    @Value("${product-catalog.test.prop:test}")
    private String prop;

    @Value("${test.message:Hello}")
    private String message;

    private CatalogRepository repository;

    public CatalogController(CatalogRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public List<Catalog> getCatalog() {
        return repository.findAll();
    }

    @GetMapping("/props")
    public String getMessage() {
        return this.message;
    }

    @GetMapping("/props2")
    public String getMessage2() {
        log.info("Product catalog service trying to fetch prop from config server and value is " + this.prop);
        return this.prop;
    }
}
