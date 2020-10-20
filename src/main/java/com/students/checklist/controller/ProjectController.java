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

import com.students.checklist.beans.Projects;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.exceptions.HackException;
import com.students.checklist.service.Service_Project;
import com.students.checklist.service.Service_Student;

@Controller
public class ProjectController {
	@Autowired
	private Service_Project serve;
	@Autowired
	private Service_Student service;
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/projects")
	public String getProjects(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			List<Projects> projects=serve.findAllProjects(session.getAttribute("id").toString());
			model.addAttribute("projects", projects);
			return "projects";
		}
		
	}
	
	@PostMapping("/projects/add")
	public String addProjects(@RequestParam("details") String details,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("imgg") MultipartFile file,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Projects project=new Projects();
			project.setMonth(month);
			project.setPro_detail(details);
			project.setSem(sem);
			project.setYear(yr);
			project.setStudent(student);
			
			if(file.isEmpty())
				project.setCertificate("NA");
			else
				project.setCertificate(upload.updateCertificate(file, "NA", student.getUser().getIdentity()));
			
			if(serve.addProject(project)) {
				return "redirect:/projects";
			}
			else {
				throw new CheckListException("failed");
			}
		}
		
	}
	
	
	@PostMapping("/projects/delete")
	public String deleteProject(@RequestParam("id") long id,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		serve.deleteProject(id,session.getAttribute("id").toString());
		return "redirect:/projects";
	}
	
	
	@PostMapping("projects/edit")
	public ResponseEntity<Projects> editProject(@RequestParam("id") long id,HttpServletRequest request){
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			throw new CheckListException("bad Request");
		}
		else {
			Projects project=serve.findProject(id,session.getAttribute("id").toString());
			session.setAttribute("cur", id);
			if(session.getAttribute("id").toString().equals(project.getStudent().getUser().getIdentity())) {
				return new ResponseEntity<Projects>(project,HttpStatus.OK);
			}
			else {
				throw new CheckListException("Bad Request");
			}
			
		}
		
		
	}
	

	@PostMapping("/projects/update")
	public String updateProject(@RequestParam("details") String details,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
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
			Projects project=new Projects();
			project.setMonth(month);
			project.setPro_detail(details);
			project.setSem(sem);
			project.setYear(yr);
			long idd=Long.parseLong(session.getAttribute("cur").toString());
			if(id!=idd) {
				throw new HackException();
			}
			project.setId(idd);
			session.removeAttribute("cur");
			project.setStudent(student);
			
			if(file.isEmpty())
				project.setCertificate(cert);
			else
				project.setCertificate(upload.updateCertificate(file, cert , student.getUser().getIdentity()));
			
			
			
			if(serve.addProject(project)) {
				return "redirect:/projects";
			}
			else {
				throw new CheckListException("failed");
			}
		}
		
	}
	
	@ExceptionHandler({java.lang.NumberFormatException.class,HackException.class})
	public String handleHack() {
		return "hackerror";
	}
	
	


}
