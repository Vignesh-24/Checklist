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

import com.students.checklist.beans.Internships;

import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.exceptions.HackException;
import com.students.checklist.service.Service_Student;
import com.students.checklist.service.Service_intern;

@Controller
public class InternController {
	
	@Autowired
	private Service_intern serve;
	
	@Autowired 
	private Service_Student service;
	
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/interns")
	public String getInterns(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			List<Internships> internships=serve.findAllInternships(session.getAttribute("id").toString());
			model.addAttribute("internships", internships);
			return "internships";
		}
	}
	
	
	@PostMapping("/interns/add")
	public String addIntern(@RequestParam("company") String company,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("location") String location,
			@RequestParam("duration") String duration,
			@RequestParam("imgg") MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		
		
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Internships internships=new Internships(student,company,location,duration,sem,yr,month);
			
			if(file.isEmpty())
				internships.setCertificate("NA");
			else
				internships.setCertificate(upload.updateCertificate(file, "NA", student.getUser().getIdentity()));
			
			
			if(serve.addIntern(internships)) {
				return "redirect:/interns";
			}
			else {
				throw new CheckListException("Failed");
			}
			
		}
	}
	
	
	@PostMapping("/interns/delete")
	public String deleteIntern(@RequestParam("id") long id,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		serve.deleteIntern(id,session.getAttribute("id").toString());
		return "redirect:/interns";
	}
	
	
	@PostMapping("/interns/edit")
	public ResponseEntity<Internships> editIntern(@RequestParam("id") long id,HttpServletRequest request){
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			throw new CheckListException("bad Request");
		}
		else {
			Internships internship=serve.findIntern(id,session.getAttribute("id").toString());
			session.setAttribute("cur", id);
			if(session.getAttribute("id").toString().equals(internship.getStudent().getUser().getIdentity())) {
				return new ResponseEntity<Internships>(internship,HttpStatus.OK);
			}
			else {
				throw new CheckListException("Bad Request");
			}
			
		}
		
	}
	
	
	@PostMapping("/interns/update")
	public String updateIntern(@RequestParam("company") String company,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("location") String location,
			@RequestParam("duration") String duration,
			@RequestParam("id") long id,
			@RequestParam("cert") String cert,
			@RequestParam("imgg") MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Internships internships=new Internships(student,company,location,duration,sem,yr,month);
			long idd=Long.parseLong(session.getAttribute("cur").toString());
			if(id!=idd) {
				throw new HackException();
			}
			internships.setId(idd);
			session.removeAttribute("cur");
			internships.setId(id);
			
			if(file.isEmpty())
				internships.setCertificate(cert);
			else
				internships.setCertificate(upload.updateCertificate(file, cert , student.getUser().getIdentity()));
			
			
			if(serve.addIntern(internships)) {
				return "redirect:/interns";
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
