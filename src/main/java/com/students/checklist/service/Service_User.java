package com.students.checklist.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.students.checklist.beans.User;
import com.students.checklist.repository.UserRepository;

@Service
public class Service_User {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private Service_Student serve;
	
	public boolean authenticate(String id, String password,HttpServletRequest request) {
		
		User user= userRepository.findByIdentity(id);
		if(user!=null) {
			if(user.getPassword().equals(password)) {
				System.out.print("Authenticated");
				HttpSession session=request.getSession();
				session.setAttribute("user",user);
				session.setAttribute("role", user.getRole());
				
				if(session.getAttribute("role").equals("ADMIN")) {
					session.setAttribute("ids",user.getIdentity());
				}else {
					session.setAttribute("id",user.getIdentity());
					session.setAttribute("student",serve.get(session.getAttribute("id").toString(), request));
				}
				
				session.setMaxInactiveInterval(8*60);
				return true;
			}
			return false;
		}
		else {
			return false;
		}
		
	}

}
