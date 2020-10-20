package com.students.checklist.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.students.checklist.beans.Student;

@ControllerAdvice
public class DefaultModelAttributeHandler {

	
	  @ModelAttribute("adduser") public Student getDefaultUser() { return new
	  Student(); }
	 

}
