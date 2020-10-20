package com.students.checklist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Academics;
import com.students.checklist.repository.AcademicRepository;

@Service
public class Service_Academics {
	@Autowired
	private AcademicRepository academicRepository;
	
	public Academics getInformation(String id) {
		Academics academics=academicRepository.findByStudentUserIdentity(id);
		
		if(null != academics) {
			return academics;
		}
		else {
			System.out.println("new Academics");
			return new Academics();
		}
	}
	
	
	public boolean addInformation(Academics academics) {
		if(null!=academicRepository.save(academics)) {
			return true;
		}
		else {
			return false;
		}
	}

}
