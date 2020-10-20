package com.students.checklist;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan(basePackages = "com.students.checklist")
@SpringBootApplication
public class ChecklistApplication {
	public static void main(String[] args) {
		SpringApplication.run(ChecklistApplication.class, args);
		
	}
	
	

}







