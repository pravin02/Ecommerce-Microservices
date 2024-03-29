package org.pk.ecommerce.services;


import lombok.extern.log4j.Log4j2;
import org.pk.ecommerce.model.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

@Log4j2
@Service
public class LogService {

    @Autowired
    public WebClient.Builder webClient;

    @Value("${protocol}")
    public String protocol;

    @Value("${logService}")
    public String service;

    public void saveLog(Log customLog) {
        log.info(String.format("Custom Log %s", customLog));
        webClient
                .build()
                .post()
                .uri(String.format("%s://%s/logs", protocol, service))
                .body(customLog, Log.class)

        ;
    }
}
