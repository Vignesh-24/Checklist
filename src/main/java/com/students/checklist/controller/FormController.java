package com.students.checklist.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.students.checklist.beans.CheckList;
import com.students.checklist.beans.Student;
import com.students.checklist.exceptions.CheckListException;

import com.students.checklist.service.Service_CheckList;
import com.students.checklist.service.Service_Student;

@Controller
public class FormController {
	@Autowired
	private Service_CheckList serve;
	
	@Autowired
	private Service_Student service;
	
	@ModelAttribute("checklist")
	public CheckList getCheckList() {
		return new CheckList();
	}
	
	@PostMapping("submitform/{month}/{year}")
	public String submit(@PathVariable("month") String month,@PathVariable("year") Integer year, @ModelAttribute("checklist") CheckList checkList, HttpServletRequest req) {
		HttpSession session=req.getSession(false);
		if(null==session.getAttribute("user")) {
			return "forward:/";
		}
		Student student=(Student)service.get(session.getAttribute("id").toString(),req);
		checkList.setStudent(student);
		checkList.setMonth(month);
		checkList.setYear(year);
		if(serve.submitForm(checkList))
		return "redirect:/home";
		else
		throw new CheckListException("OOPS");
		
	}
	
	@GetMapping("/checklist_form/{month}/{year}")
	public String getForm(@PathVariable("month") String month,@PathVariable("year") Integer year,Model model,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		CheckList checkList= serve.findbyId(session.getAttribute("id").toString(), year, month);
		if(checkList!=null) {
			model.addAttribute("checklist",checkList);
		}
		else {
			if((month.equals("Dec") || month.equals("Mar") || month.equals("Jun"))) {
				checkList=new CheckList();
				checkList.setMonth(month);
				checkList.setYear(year);
				model.addAttribute("checklist", checkList);
			}
			else {
				return "redirect:/home";	
			}
			
		}

		return "checklist_form";
		
	}

}
