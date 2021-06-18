package org.pk.ecommerce.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "product")
@Data
public class Product implements Serializable {
    @Id
    private int productId;
    @Column
    private String productName;
    @Column
    private int catalogId;
}
