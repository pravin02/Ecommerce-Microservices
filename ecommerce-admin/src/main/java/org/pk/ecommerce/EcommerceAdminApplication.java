package org.pk.ecommerce;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAdminServer
public class EcommerceAdminApplication {

	public static void main(String[] args) {
		SpringApplication.run(EcommerceAdminApplication.class, args);
	}

}
