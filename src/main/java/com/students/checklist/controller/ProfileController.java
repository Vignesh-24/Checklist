package com.students.checklist.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;
import com.students.checklist.service.Service_Student;

@Controller
public class ProfileController {
	
	@Autowired
	private Service_Student serve;
	
	@GetMapping("/profile")
	public String getProfile(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		model.addAttribute("student", serve.get(session.getAttribute("id").toString(), request));
		return "profile";
		
	}
	
	@PostMapping("/update")
	public String updateProfile(@ModelAttribute("student") Student student,HttpServletRequest request) {
	
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		Student temp=serve.get(session.getAttribute("id").toString(),request);
		student.setId(temp.getId());
		student.getUser().setId(temp.getUser().getId());
		student.getUser().setIdentity(session.getAttribute("id").toString());
		student.getUser().setRole("STUDENT");
		if(serve.update(student)) {
			session.removeAttribute("student");
			session.setAttribute("student",serve.get(student.getUser().getIdentity(), request));
			return "redirect:/profile";
		}else {
			throw new CheckListException("failed");
		}
		
	}

}
