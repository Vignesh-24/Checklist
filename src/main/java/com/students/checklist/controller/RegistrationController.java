package com.students.checklist.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.students.checklist.beans.Staff;
import com.students.checklist.beans.Student;

import com.students.checklist.service.Service_Staff;
import com.students.checklist.service.Service_Student;


@Controller
public class RegistrationController {
	
	@Autowired
	private Service_Student serve;
	
	@Autowired 
	private Service_Staff service;

	
	  @GetMapping("/register")
	  public String getRegistrationForm() { 
		  System.out.println("In registration");
		  return "register";
		  }
	  	 
	  
	 
	@PostMapping("/add")
	public String saveData(@ModelAttribute("adduser") Student student,@RequestParam("imgg") MultipartFile file,HttpServletRequest request,Model model) {
		student.getUser().setRole("STUDENT");
		Student student_temp=serve.add(student, file);
		if(student_temp != null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("id", student.getUser().getIdentity());
			session.setAttribute("user", student_temp.getUser());
			session.setAttribute("student", student_temp);
			session.setAttribute("role", "STUDENT");
			session.setMaxInactiveInterval(6*60);
			return "redirect:/home";
		}
			
		else {
			model.addAttribute("info", "Registration Failed ...!!! (User ID already taken ) ");
			return "register";
		}
			
	}
	
	
	@ModelAttribute("addStaff")
	public Staff getStaff() {
		return new Staff();
	}
	
	@GetMapping("/app/checklist/adminuser/")
	public String registerStaff() {
		return "staffs";
	}
	
	
	@PostMapping("/app/checklist/adminuser/addStaff")
	public String saveData(@ModelAttribute("addStaff") Staff staff,HttpServletRequest request,Model model) {
		if(service.add(staff,request)) {
			HttpSession session=request.getSession();
			session.setAttribute("user",staff.getUser());
			session.setAttribute("role", "ADMIN");
			session.setAttribute("ids",staff.getUser().getIdentity());
			session.setMaxInactiveInterval(6*60);
			return "redirect:/staffhome";
		}
			
		else {
			model.addAttribute("info", "Registration Failed ...!!! (User ID already taken ) ");
			return "staffs";
		}
			
		
	}
	
	
	

	


}
