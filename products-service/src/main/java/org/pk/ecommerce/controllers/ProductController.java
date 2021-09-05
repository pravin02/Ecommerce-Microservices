package org.pk.ecommerce.controllers;

import org.pk.ecommerce.entities.Product;
import org.pk.ecommerce.repositories.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.ws.rs.QueryParam;
import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping
    public List<Product> productsList(@QueryParam("catalog") String catalog) {
        if (catalog == null) {
            return productRepository.findAll();
        }
        return productRepository.findAllByCatalogId(Integer.parseInt(catalog));
    }
}
