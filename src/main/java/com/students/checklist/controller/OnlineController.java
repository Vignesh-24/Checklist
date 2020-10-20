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

import com.students.checklist.beans.OnlineAssessment;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Online;
import com.students.checklist.service.Service_Student;

@Controller
public class OnlineController {
	
	@Autowired
	private Service_Online serve;
	
	@Autowired 
	private Service_Student service;
	
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/online_assessment")
	public String getAssessment(HttpServletRequest request,Model model) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		OnlineAssessment assessment=serve.getAssessment(session.getAttribute("id").toString());
		if(assessment==null)
			assessment=new OnlineAssessment();
		
	
		if(assessment.getBec_cert()==null)
			assessment.setBec_cert("NA");
		if(assessment.getGate_cert()==null)
			assessment.setGate_cert("NA");
		if(assessment.getGre_cert()==null)
			assessment.setGre_cert("NA");
		
		model.addAttribute("assessment",assessment);
		return "online";
	}
	
	
	@PostMapping("/submit_assessment")
	public String submit(@ModelAttribute("assessment") OnlineAssessment assessment,
			@RequestParam("b_cert") MultipartFile bec,
			@RequestParam("g_cert") MultipartFile gate,
			@RequestParam("gg_cert") MultipartFile gre,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		
		
		Student student=(Student)service.get(session.getAttribute("id").toString(),request);
		assessment.setStudent(student);
		
		
		if(!bec.isEmpty()) {
			assessment.setBec_cert(upload.updateCertificate(bec, assessment.getBec_cert(), student.getUser().getIdentity()));
		}
		
		if(!gate.isEmpty()) {
			assessment.setGate_cert(upload.updateCertificate(gate, assessment.getGate_cert(), student.getUser().getIdentity()));
		}
		
		if(!gre.isEmpty()) {
			assessment.setGre_cert(upload.updateCertificate(gre, assessment.getGre_cert(), student.getUser().getIdentity()));
		}
		
		if(assessment.getBec_cert().equals(""))
			assessment.setBec_cert("NA");
		if(assessment.getGate_cert().equals(""))
			assessment.setGate_cert("NA");
		if(assessment.getGre_cert().equals(""))
			assessment.setGre_cert("NA");
		
		
		
		if(!serve.addInfo(assessment)) {
			throw new CheckListException("failed");
		}
		
		return "redirect:/home";
		
		
	}

}
