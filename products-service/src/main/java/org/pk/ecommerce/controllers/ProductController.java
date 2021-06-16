package org.pk.ecommerce.controllers;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.ws.rs.QueryParam;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {
    private static final Logger LOGGER = LogManager.getLogger(ProductController.class);

    @GetMapping("/list")
    public List<String> productsList(@QueryParam("category") String category) {
        LOGGER.info("Query received for category wise product list " + category);
        if (category == null) {
            return Arrays.asList("Freez", "Mobile");
        }
        return productListByCategory(category);
    }

    public List<String> productListByCategory(String category) {

        List<String> productsArrayList = new ArrayList<>();
        switch (category) {
            case "Electronics":
                productsArrayList = Arrays.asList("Mobile");
                break;
            case "Home Appliances":
                productsArrayList = Arrays.asList("Freez", "TV", "Cooler", "AC");
                break;
            case "Beauty Parlor":
                productsArrayList = Arrays.asList("Glow & Lovely", "Lipstic", "Powder");
                break;
            default:
                productsArrayList = Arrays.asList("Freez", "Mobile");
                break;
        }
        return productsArrayList;
    }

}
