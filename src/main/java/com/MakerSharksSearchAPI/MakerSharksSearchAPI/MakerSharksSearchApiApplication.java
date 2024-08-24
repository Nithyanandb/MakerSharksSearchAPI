package com.MakerSharksSearchAPI.MakerSharksSearchAPI;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.MakerSharksSearchAPI")
public class MakerSharksSearchApiApplication {
	public static void main(String[] args) {
		SpringApplication.run(MakerSharksSearchApiApplication.class, args);
	}
}

