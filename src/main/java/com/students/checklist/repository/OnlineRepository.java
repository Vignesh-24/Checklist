package com.students.checklist.repository;

import org.springframework.data.repository.CrudRepository;

import com.students.checklist.beans.OnlineAssessment;

public interface OnlineRepository extends CrudRepository<OnlineAssessment, Integer> {
	
	
	public OnlineAssessment findByStudentUserIdentity(String identity);

}
