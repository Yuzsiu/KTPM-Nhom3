package com.ktpm.websitelaptop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.persistence.autoconfigure.EntityScan;

@SpringBootApplication
@EntityScan("com.ktpm.websitelaptop.model.entity")
public class WebsiteBanLaptopApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebsiteBanLaptopApplication.class, args);
        System.out.println("--- websitelaptop SERVER IS RUNNING ---");
    }

}
