package com.students.checklist.exceptions;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice()
public class ExceptionHandlerClass {
	@ExceptionHandler({java.lang.NullPointerException.class,SessionException.class})
	public String handle(Model model) {
		model.addAttribute("message","You have to Login to access the page...!");
		return "error";
	}
	
	
	@ExceptionHandler({org.springframework.web.HttpRequestMethodNotSupportedException.class,CheckListException.class,java.lang.NumberFormatException.class})
	public String handleChecklist(Model model) {
		model.addAttribute("message","OOPS!! Something went wrong...");
		return "error";
	}
	@ExceptionHandler(org.springframework.web.multipart.MaxUploadSizeExceededException.class)
	public String photoError(Model model) {
		model.addAttribute("message","Maximum Upload Size is 1MB !!!");
		return "error";
	}
	
	
	
	
	
	
	
	
}
