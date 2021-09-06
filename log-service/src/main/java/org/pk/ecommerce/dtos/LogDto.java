package org.pk.ecommerce.dtos;

import lombok.Data;

@Data
public class LogDto {
    private String logId;
    private String description;
    private String method;
    private String type;
}
