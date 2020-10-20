package com.students.checklist.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.students.checklist.beans.Communication;
import com.students.checklist.beans.Language;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Communication;


@Controller
public class CommunicationController {
	
	@Autowired
	private Service_Communication serve;
	
	
	@ModelAttribute("commForm")
	public Communication getCom() {
		Communication communication=new Communication();
	    return communication;
	}
	
	@GetMapping("/communication")
	public String getCommunication(Model model,HttpServletRequest request) {
		
		    Communication communication;
		    HttpSession session=request.getSession(false);
			communication=(Communication) session.getAttribute("comm");
			if(communication==null) {
				communication=serve.getStudentCommunication(request);
			}
		
		
		model.addAttribute("communication", communication);
		return "communication";
	}
	
	
	@PostMapping("/comm/submit")
	public String print(@ModelAttribute("commForm") Communication communication,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		Communication communication2=(Communication) session.getAttribute("comm");
		communication.setStudent(communication2.getStudent());
		if(serve.submit(communication)) {
			System.out.print("success");
			session.removeAttribute("comm");
			return "redirect:/home";
		}
		else {
			throw new CheckListException("Failed");
		}
		
	}
	
	
	@PostMapping("/comm/add")
	public String addLanguage(@ModelAttribute("language") Language lang, HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		Communication communication=(Communication) session.getAttribute("comm");

		if(communication.getLanguages()==null) {
			communication.setLanguages(new ArrayList<Language>());
		}
		communication.getLanguages().add(lang);
		return "redirect:/communication";
		
	}
	
	
	
	@ModelAttribute("language")
	public Language getLang() {
		return new Language();
	}

}
