package org.pk.ecommerce.services;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

@Log4j2
@Service
public class ProductService {

    @Autowired
    public WebClient.Builder webClient;

    @Value("${protocol}")
    public String protocol;

    @Value("${productService}")
    public String service;

    public Mono<Object> getProductsByCatalog(int catalogId) {
        return
                webClient
                        .build()
                        .get()
                        .uri(String.format("%s://%s/products?catalogId=%d", protocol, service, catalogId))
                        .retrieve()
                        .bodyToMono(Object.class)
                        .log()
                ;
    }
}
