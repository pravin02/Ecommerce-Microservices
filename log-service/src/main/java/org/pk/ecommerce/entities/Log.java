package org.pk.ecommerce.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.pk.ecommerce.dtos.LogDto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;


@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Entity
@Table(name = "logs")
public class Log {
    @Id
    private String logId = UUID.randomUUID().toString();
    @Column
    private String description;
    @Column
    private String method;
    @Column
    private String type;

    public Log(LogDto logDto) {
        this.setLogId(logDto.getLogId());
        this.setDescription(logDto.getDescription());
        this.setMethod(logDto.getMethod());
        this.setType(logDto.getType());

    }
}
