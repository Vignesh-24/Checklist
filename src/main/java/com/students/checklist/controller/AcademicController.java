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

import com.students.checklist.beans.Academics;
import com.students.checklist.beans.Student;
import com.students.checklist.service.Service_Academics;
import com.students.checklist.service.Service_Student;

@Controller
public class AcademicController {
	
	@Autowired
	private Service_Academics serve;
	
	@Autowired
	private Service_Student service;
	
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/academics")
	public String goAcademic(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		
		Academics academics=serve.getInformation(session.getAttribute("id").toString());
		
		model.addAttribute("academics",academics);
		return "academics";
	}
	
	
	@PostMapping("/submit_academics")
	public String submit(@ModelAttribute("academics") Academics academics,
			HttpServletRequest request,
			@RequestParam("s_cert") MultipartFile sslc,
			@RequestParam("h_cert") MultipartFile hsc,
			@RequestParam("d_cert") MultipartFile diploma) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		Student student=(Student)service.get(session.getAttribute("id").toString(),request);
		
		
		//handling empty certificate for first time
		if(academics.getSslc().getCertificate().equals(""))
			academics.getSslc().setCertificate("NA");
		if(academics.getHsc().getCertificate().equals(""))
			academics.getHsc().setCertificate("NA");
		if(academics.getDiploma().getCertificate().equals(""))
			academics.getDiploma().setCertificate("NA");
		
		
		
		
		
		if(!sslc.isEmpty())
		{
			academics.getSslc().setCertificate(upload.updateCertificate(sslc, academics.getSslc().getCertificate(), student.getUser().getIdentity()));
		}
		if(!hsc.isEmpty())
		{
			academics.getHsc().setCertificate(upload.updateCertificate(hsc, academics.getHsc().getCertificate(), student.getUser().getIdentity()));
		}
		if(!diploma.isEmpty())
		{
			academics.getDiploma().setCertificate(upload.updateCertificate(diploma, academics.getDiploma().getCertificate(), student.getUser().getIdentity()));
		}
		
		academics.setStudent(student);
		if(serve.addInformation(academics)) {
			return "redirect:/home";
		}
		else {
			return "redirect:/academics";
		}
		
		
	
		
	}

}
