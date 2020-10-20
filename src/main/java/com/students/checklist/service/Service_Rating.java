package com.students.checklist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Performance;
import com.students.checklist.repository.RatingRepository;

@Service
public class Service_Rating {
	
	@Autowired
	private RatingRepository repository;
	
	public Boolean save(Performance performance) {
		if(null != repository.save(performance))
			return true;
		else
			return false;
		
	}
	
	
	
	public Performance get(String identity) {
		Performance performance=repository.findByStudentUserIdentity(identity);
		if(null != performance)
			return performance;
		else
			return new Performance();
	}

}
