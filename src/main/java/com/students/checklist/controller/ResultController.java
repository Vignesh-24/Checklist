package com.students.checklist.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.students.checklist.beans.CheckList;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Academics;
import com.students.checklist.service.Service_CheckList;
import com.students.checklist.service.Service_Communication;
import com.students.checklist.service.Service_Courses;
import com.students.checklist.service.Service_Online;
import com.students.checklist.service.Service_Project;
import com.students.checklist.service.Service_Rating;
import com.students.checklist.service.Service_Skills;
import com.students.checklist.service.Service_Student;
import com.students.checklist.service.Service_intern;

@Controller
public class ResultController {
	
	@Autowired
	private Service_Student student;
	@Autowired
	private Service_Communication communication;
	@Autowired
	private Service_intern intern;
	@Autowired
	private Service_Project project;
	@Autowired 
	private Service_Courses courses; 
	@Autowired 
	private Service_Skills skills;
	@Autowired 
	private Service_Academics academics;
	
	@Autowired
	private Service_CheckList checklist;
	
	@Autowired
	private Service_Online online;
	
	@Autowired 
	private Service_Rating rating;
	
	@GetMapping("/result/{id}")
	public String getResult(@PathVariable("id") String id,HttpServletRequest request, Model model) {
		String identity;
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("id") && null==session.getAttribute("ids")) {
			throw new CheckListException("bad Request");
		}
		
		if(session.getAttribute("role").equals("ADMIN")) {
			identity=id;
		}else {
			identity=session.getAttribute("id").toString();
		}
		Student student_1=student.get(identity,request);
		model.addAttribute("wrapper", student.getStaff(student_1.getId()));
		model.addAttribute("student", student_1);
		model.addAttribute("academics", academics.getInformation(identity));
		model.addAttribute("skills",skills.findAllSkills(identity));
		model.addAttribute("courses",courses.findAllCourses(identity));
		model.addAttribute("internships",intern.findAllInternships(identity));
		model.addAttribute("projects",project.findAllProjects(identity));
		model.addAttribute("communication",communication.getCommunication(identity));
		List<CheckList> checkLists=checklist.findAll(identity,request);	
		model.addAttribute("checklists",checkLists);
		model.addAttribute("online",online.getAssessment(identity));
		model.addAttribute("rating", rating.get(identity));
		return "result";

		
	}
	

	

	


}
