package org.pk.ecommerce.controllers;

import lombok.extern.slf4j.Slf4j;

import org.pk.ecommerce.entities.Catalog;
import org.pk.ecommerce.repositories.CatalogRepository;

import org.pk.ecommerce.services.ProductService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RefreshScope
@Slf4j
@RestController
@RequestMapping("/catalog")
public class CatalogController {

    @Value("${test.message:Hello}")
    private String message;

    private CatalogRepository repository;

    private ProductService services;

    public CatalogController(CatalogRepository repository, ProductService services) {
        this.repository = repository;
        this.services = services;
    }

    @GetMapping
    public List<Catalog> getCatalog() {
        return repository.findAll();
    }

    @GetMapping("/message")
    public String getMessage() {
        return this.message;
    }

    @GetMapping("/{catalog}/products")
    public ResponseEntity<?> getProductsByCatalogId(@PathVariable("catalog") String catalog) {
        return ResponseEntity.ok(services.getProductsByCatalog(catalog));
    }
}
