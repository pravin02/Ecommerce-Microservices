package org.pk.ecommerce.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;

@Entity
@Table(name = "logs")
@Data
public class Log {
    @Id
    private String logId = UUID.randomUUID().toString();
    @Column
    private String description;
    @Column
    private String method;
    @Column
    private String type;
}
