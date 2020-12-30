package org.pk.ecommerce.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/catalog")
public class DefaultController {

    @GetMapping()
    public String welcome() {
        return "Welcome to product catalog services";
    }
}
