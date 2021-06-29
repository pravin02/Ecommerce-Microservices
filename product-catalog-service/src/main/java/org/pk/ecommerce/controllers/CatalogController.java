package org.pk.ecommerce.controllers;

import lombok.extern.slf4j.Slf4j;
import org.pk.ecommerce.entities.Catalog;
import org.pk.ecommerce.model.MyProps;
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

    @Value("${test.message:Hello}")
    private String message;

    private MyProps myProps;

    private CatalogRepository repository;

    public CatalogController(CatalogRepository repository, MyProps myProps) {
        this.repository = repository;
        this.myProps = myProps;
    }

    @GetMapping
    public List<Catalog> getCatalog() {
        return repository.findAll();
    }

    @GetMapping("/props")
    public String getProps() {
        return this.myProps.getProp();
    }

    @GetMapping("/message")
    public String getMessage() {
        return this.message;
    }
}
