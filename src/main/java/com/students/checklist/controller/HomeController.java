package com.students.checklist.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Staff;
import com.students.checklist.service.Service_Student;


@Controller
public class HomeController {
	
	@Autowired
	private Service_Staff serve;
	
	@Autowired 
	private Service_Student Student;
	
	
	@GetMapping("/home")
	public String getHome(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		else {
			if(session.getAttribute("role").equals("ADMIN")) {
				return "redirect:/staffhome";
			}
			else {
				return "home";
			}
		}
			
	}
	
	@GetMapping("/staffhome")
	public String getstaffhome(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		else {
			if(session.getAttribute("role").equals("ADMIN")) {
				List<Student> students=serve.getStudents(session.getAttribute("ids").toString());
				model.addAttribute("students",students);
				return "staffhome";
				
			}else {
				return "redirect:/home";
			}
		}
	}
	
	
	
	@GetMapping("/getStudents")
	public String getStudentsList(@RequestParam("dept") String dept, @RequestParam("batch") int batch, 
			@RequestParam("section") String section,Model model) {
		model.addAttribute("students",Student.findStudents(section, dept, batch));
		return "addstudents";
	}
	
	
	
	@PostMapping("/addStudents")
	public String addStudents(@RequestParam("id") int[] ids, HttpServletRequest request){
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		
		if(session.getAttribute("role").equals("ADMIN")) {
			
			if(serve.addStudents(session.getAttribute("ids").toString(),ids)) {
				return "redirect:/staffhome";
			}
		}
		
		throw new CheckListException("Failed");
		
	}
	
	
	
	
	

	
	
}
