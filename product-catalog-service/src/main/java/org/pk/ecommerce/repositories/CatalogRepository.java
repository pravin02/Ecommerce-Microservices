package org.pk.ecommerce.repositories;

import org.pk.ecommerce.entities.Catalog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CatalogRepository extends JpaRepository<Catalog, Integer> {

}
