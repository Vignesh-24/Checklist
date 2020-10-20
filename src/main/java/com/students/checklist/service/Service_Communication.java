package com.students.checklist.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Communication;
import com.students.checklist.beans.Student;
import com.students.checklist.repository.CommunicationRepository;

@Service
public class Service_Communication {
	
	@Autowired
	private CommunicationRepository communicationRepository;
	

	@Autowired
	private Service_Student service;
	
	public Boolean submit(Communication communication) {
		
		if(null!=communicationRepository.save(communication))
			return true;
		else
			return false;
		
	}
	
	public Communication getCommunication(String identity) {
		return communicationRepository.findByStudentUserIdentity(identity);
	}
	
	
	
	public Communication getStudentCommunication(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		String identity=session.getAttribute("id").toString();
		Communication communication=communicationRepository.findByStudentUserIdentity(identity);
		if( communication== null) {
			communication=new Communication();
			communication.setId(0);
			communication.setStudent((Student)service.get(identity,request));
			session.setAttribute("comm", communication);
			System.out.println(" In  Service geting new one ");
		}
		session.setAttribute("comm", communication);
		return communication ;
	}

}
