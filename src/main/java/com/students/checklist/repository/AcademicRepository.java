package com.students.checklist.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Academics;

@Repository
public interface AcademicRepository extends CrudRepository<Academics, Integer> {
	
	public Academics findByStudentUserIdentity(@Param("identity") String identity);

}
