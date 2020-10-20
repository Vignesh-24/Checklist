package com.students.checklist.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.students.checklist.beans.Skills;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.exceptions.HackException;
import com.students.checklist.service.Service_Skills;
import com.students.checklist.service.Service_Student;

@Controller
public class SkillController {
	
	@Autowired 
	private Service_Skills serve;
	@Autowired
	private Service_Student service;
	
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/skills")
	public String getSkills(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			List<Skills> skill=serve.findAllSkills(session.getAttribute("id").toString());
			model.addAttribute("skills", skill);
			return "skills";
		}
	}
	
	
	@PostMapping("/skills/add")
	public String addSkills(@RequestParam("details") String details,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("trainer") String trainer,
			@RequestParam("duration") String duration,
			@RequestParam("imgg") MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Skills skill=new Skills(student,details,trainer,duration,sem,month,yr);
			
			if(file.isEmpty())
				skill.setCertificate("NA");
			else
				skill.setCertificate(upload.updateCertificate(file, "NA", student.getUser().getIdentity()));
			
			if(serve.addSkill(skill)) {
				return "redirect:/skills";
			}
			else {
				throw new CheckListException("Failed");
			}
			
		}
	}
	
	
	@PostMapping("/skills/delete")
	public String deleteSkill(@RequestParam("id") long id,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		serve.deleteSkill(id,session.getAttribute("id").toString());
		return "redirect:/skills";
	}
	
	
	
	@PostMapping("/skills/edit")
	public ResponseEntity<Skills> editSkill(@RequestParam("id") long id,HttpServletRequest request){
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			throw new CheckListException("bad Request");
		}
		else {
			Skills skill=serve.findSkill(id,session.getAttribute("id").toString());
			session.setAttribute("cur", id);
			if(session.getAttribute("id").toString().equals(skill.getStudent().getUser().getIdentity())) {
				return new ResponseEntity<Skills>(skill,HttpStatus.OK);
			}
			else {
				throw new CheckListException("Bad Request");
			}
			
		}
		
	}
	
	@PostMapping("/skills/update")
	public String updateSkills(@RequestParam("details") String details,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("trainer") String trainer,
			@RequestParam("duration") String duration,
			@RequestParam("id") long id,
			@RequestParam("imgg") MultipartFile file,
			@RequestParam("cert") String cert,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Skills skill=new Skills(student,details,trainer,duration,sem,month,yr);
			
			long idd=Long.parseLong(session.getAttribute("cur").toString());
			if(id!=idd) {
				throw new HackException();
			}
			skill.setId(idd);
			session.removeAttribute("cur");
			skill.setId(id);
			
			if(file.isEmpty())
				skill.setCertificate(cert);
			else
				skill.setCertificate(upload.updateCertificate(file, cert, student.getUser().getIdentity()));
			
			
			if(serve.addSkill(skill)) {
				return "redirect:/skills";
			}
			else {
				throw new CheckListException("Failed");
			}
			
		}
	}
	
	
	
	@ExceptionHandler({java.lang.NumberFormatException.class,HackException.class})
	public String handleHack() {
		return "hackerror";
	}
	
	

}
