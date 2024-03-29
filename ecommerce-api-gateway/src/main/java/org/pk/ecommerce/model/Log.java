package org.pk.ecommerce.model;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class Log {
    private int logId;
    private String description;
    private String method;
    private String type;
}
