package org.pk.ecommerce.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/catalog")
public class ProductCatalogController {

    @GetMapping("/list")
    public List<String> getCatalog() {
        return Arrays.asList("Electronics", "Home Appliances", "Beauty Parlor");
    }
}
