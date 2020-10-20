package com.students.checklist.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.students.checklist.beans.Performance;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Rating;
import com.students.checklist.service.Service_Student;

@Controller
public class PerformanceController {
	
	@Autowired
	private Service_Rating serve;
	
	@Autowired
	private Service_Student service;
	
	@GetMapping("/rating")
	public String getPerformance(HttpServletRequest request,Model model) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		model.addAttribute("rating",serve.get(session.getAttribute("id").toString()));
		return "rating";
	}
	
	
	@PostMapping("/submit/rating")
	public String submit(@ModelAttribute("rating") Performance rating,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		rating.setStudent((Student)service.get(session.getAttribute("id").toString(),request));
		if(!serve.save(rating))
			throw new CheckListException("Failed");
		return "redirect:/home";
	}

}
