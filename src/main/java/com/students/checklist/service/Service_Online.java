package com.students.checklist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.OnlineAssessment;
import com.students.checklist.repository.OnlineRepository;

@Service
public class Service_Online {
	@Autowired
	private OnlineRepository onlineRepository;
	
	public OnlineAssessment getAssessment(String identity) {
		
		return onlineRepository.findByStudentUserIdentity(identity);
		
	}
	
	public Boolean addInfo(OnlineAssessment assessment) {
		if(null!=onlineRepository.save(assessment)) {
			return true;
		}
		else {
			return false;
		}
	}

}
