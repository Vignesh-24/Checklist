package com.students.checklist.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Communication;

@Repository
public interface CommunicationRepository extends CrudRepository<Communication, Integer>{
	
	
	public Communication findByStudentUserIdentity(@Param("identity") String identity);

}
