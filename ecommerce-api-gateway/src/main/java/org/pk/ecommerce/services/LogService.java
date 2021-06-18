package org.pk.ecommerce.services;

import org.pk.ecommerce.config.CustomFeignClientConfiguration;
import org.pk.ecommerce.model.Log;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

@Service
@FeignClient(name = "log-service", url = "http://localhost:8085/logs", configuration = CustomFeignClientConfiguration.class)
public interface LogService {

    @PostMapping
    public void saveLogs(Log log);
}
