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

import com.students.checklist.beans.Courses;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.exceptions.HackException;
import com.students.checklist.service.Service_Courses;
import com.students.checklist.service.Service_Student;

@Controller
public class CourseController {
	
	@Autowired
	private Service_Courses serve;
	
	@Autowired 
	private Service_Student service;
	
	@Autowired
	private FileUploadController upload;
	
	@GetMapping("/courses")
	public String getCourses(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			List<Courses> course=serve.findAllCourses(session.getAttribute("id").toString());
			model.addAttribute("courses", course);
			return "courses";
		}
	}
	
	
	@PostMapping("/courses/add")
	public String addProjects(@RequestParam("details") String details,
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
			Courses course=new Courses(student,details,trainer,duration,sem,month,yr);
			
			
			if(file.isEmpty())
				course.setCertificate("NA");
			else
				course.setCertificate(upload.updateCertificate(file, "NA", student.getUser().getIdentity()));
				
			
			
			
			if(serve.addCourse(course)) {
				return "redirect:/courses";
			}
			else {
				throw new CheckListException("Failed");
			}
			
		}
	}
	
	
	
	@PostMapping("/courses/delete")
	public String deleteCourse(@RequestParam("id") long id,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		serve.deleteCourse(id,session.getAttribute("id").toString());
		return "redirect:/courses";
	}
	
	
	
	@PostMapping("courses/edit")
	public ResponseEntity<Courses> editCourse(@RequestParam("id") long id,HttpServletRequest request){
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			throw new CheckListException("bad Request");
		}
		else {
			Courses course=serve.findCourse(id,session.getAttribute("id").toString());
			session.setAttribute("cur", id);
			if(session.getAttribute("id").toString().equals(course.getStudent().getUser().getIdentity())) {
				return new ResponseEntity<Courses>(course,HttpStatus.OK);
			}
			else {
				throw new CheckListException("Bad Request");
			}
			
		}
		
	}
	
	
	@PostMapping("/courses/update")
	public String updateProject(@RequestParam("details") String details,
			@RequestParam("sem") Integer sem,
			@RequestParam("month") String month,
			@RequestParam("yr") Integer yr,
			@RequestParam("trainer") String trainer,
			@RequestParam("duration") String duration,
			@RequestParam("cert") String cert,
			@RequestParam("imgg") MultipartFile file,
			@RequestParam("id") long id,
			HttpServletRequest request) {
		
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id")) {
			return "redirect:/";
		}
		else {
			Student student=(Student)service.get(session.getAttribute("id").toString(),request);
			Courses course=new Courses(student,details,trainer,duration,sem,month,yr);
			long idd=Long.parseLong(session.getAttribute("cur").toString());
			
			if(id!=idd) {
				throw new HackException();
			}
			
			course.setId(idd);
			session.removeAttribute("cur");
			course.setId(id);
			
			if(file.isEmpty())
				course.setCertificate(cert);
			else
				course.setCertificate(upload.updateCertificate(file, cert , student.getUser().getIdentity()));
			
			if(serve.addCourse(course)) {
				return "redirect:/courses";
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


