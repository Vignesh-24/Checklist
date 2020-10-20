package com.students.checklist.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Performance;

@Repository
public interface RatingRepository  extends CrudRepository<Performance, Integer>{
	
	
	public Performance findByStudentUserIdentity(String id);

}
