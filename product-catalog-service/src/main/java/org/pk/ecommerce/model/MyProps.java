package org.pk.ecommerce.model;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;

@RefreshScope
@Data
@Component
@ConfigurationProperties("product-catalog.test")
public class MyProps {

    private String prop;
}
