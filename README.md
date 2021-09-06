# This is simplest ecommerce demo using Microservices architecture

## Prerequisite:
    1) Java 8
    2) Spring Boot
    3) Spring Boot Admin module
    4) Eureka Config Server
    5) Eureka Config Client
    6) Zuul Api Gateway
	7) Discovery Server

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

## Plugin used
	id "org.sonarqube" version "3.0"

## How to run:
    1) go to each project folder open terminal and hit ./gradlew build
	2) ./gradlew clean build -x test
	

## Digram:
![alt text](https://github.com/pravin02/Ecommerce-Microservices/blob/main/Eommerce_Microservice_architecture.png)

## Endpoints to Expose:
1) localhost:8080/api/catalog
2) localhost:8080/api/catalog/message
3) localhost:8080/api/catalog/1/products
4) localhost:8080/api/products

## Spring Boot Admin:
Spring boot admin to monitor app services can be accessible using http://localhost:8081/applications

## SonarQube integrated:
SonarQube accessible at http://localhost:9000/ and gradle command to do analysis is
./gradlew sonarqube -Dsonar.projectKey=ec-product-catalog-service -Dsonar.host.url=http://127.0.0.1:9000 -Dsonar.login=SONAR_KEY

## Zipkin server:
http://127.0.0.1:9411/

## Upcoming improvements:
1) Circuit Breaker - resilience4j
2) Git Flow with github
3) Junits & Integration tests
4) Config Server Refresh Bus
5) ELK stack (Elastic search, Log stash, Kibana)
6) Jqassistance deps graph
7) BDD & TDD
