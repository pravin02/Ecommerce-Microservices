# This is simplest ecommerce demo using Microservices archetecture

## Prerequisite:
    1) Java 8
    2) Spring Boot
    3) Spring Boot Admin module
    4) Eureka Config Server
    5) Eureka Config Client
    6) Zuul Api Gateway

# Modules:
    1) Zuul Api Gateway - zuul-api-gateway
        Port - 8080
        Deps -  'org.springframework.boot:spring-boot-starter-web'
	            'org.springframework.cloud:spring-cloud-starter-netflix-zuul'
	            'org.springframework.cloud:spring-cloud-starter-netflix-eureka-client'

    1) Service Registry - eureka-service-registry
        Port - 8082
        Deps -  'org.springframework.boot:spring-boot-starter-web'
	            'org.springframework.cloud:spring-cloud-starter-netflix-eureka-server'
                'de.codecentric:spring-boot-admin-starter-client'

    2) Product Catalog Service - product-catalog-service
        Port - 8083
        Deps -  'org.springframework.boot:spring-boot-starter-web'
                'org.springframework.boot:spring-boot-starter-actuator'
                'org.springframework.cloud:spring-cloud-starter-netflix-eureka-client'
                'de.codecentric:spring-boot-admin-starter-client'

    3) Products Service - products-service
        Port - 8083
        Deps -  'org.springframework.boot:spring-boot-starter-web'
                'org.springframework.boot:spring-boot-starter-actuator'
                'org.springframework.cloud:spring-cloud-starter-netflix-eureka-client'
                'de.codecentric:spring-boot-admin-starter-client'

     4) Ecommerce Admin - Spring-boot-admin
        Port - 8081
        Deps -  'org.springframework.boot:spring-boot-starter-web'
                'org.springframework.cloud:spring-cloud-starter-netflix-eureka-client'	            
	            'de.codecentric:spring-boot-admin-starter-server'
                'de.codecentric:spring-boot-admin-starter-client'	            

## How to run:
    1) go to each project folder open terminal and hit ./gradlew build


## Endpoints to Expose:
1) localhost:8080/catalog
2) localhost:8080/catalog/list
3) localhost:8080/products
4) localhost:8080/products/list