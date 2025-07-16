package com.projects.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class LaptopShopApplication {

	public static void main(String[] args) {
		ApplicationContext beans = SpringApplication.run(LaptopShopApplication.class, args);
		for(String s: beans.getBeanDefinitionNames()) {
			System.out.println(s);
		}
	}

}
