package org.pk.ecommerce.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "catalog")
@Data
public class Catalog implements Serializable {
    @Id
    private int catalogId;
    @Column
    private String catalog;
}
