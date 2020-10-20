package com.students.checklist.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.students.checklist.service.Service_User;

@Controller
public class LoginController {
	
	@Autowired
	private Service_User serve;
	
	@GetMapping("/")
	public String getLogin() {
		return "login";
	}
	
	@PostMapping("/home")
	public String authenticate(@RequestParam("username") String identity, @RequestParam("password") String password,HttpServletRequest request,Model model) {
		
		if(serve.authenticate(identity, password, request)) {
			
			
			HttpSession session=request.getSession(false);
			if(session.getAttribute("role").equals("ADMIN")) {
				return "redirect:/staffhome";
			}
			else {
				return "home";
			}
			
		}
		else {
			model.addAttribute("info","Invalid UserID / Password ");
			return "login";
		}
	}
	
	
	

	

}
