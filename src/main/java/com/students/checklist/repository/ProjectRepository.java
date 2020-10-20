package com.students.checklist.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Projects;

@Repository
public interface ProjectRepository extends CrudRepository<Projects, Integer>{
	
	
	public Projects findByIdAndStudentUserIdentity(@Param("id") long id,String identity);
	
	
	@Query(value ="Select * from projects where identity=:identity", nativeQuery = true)
	public List<Projects> findAllProjects(@Param("identity") String identity);
	
	@Transactional
	public void deleteByIdAndStudentUserIdentity(long id,String identity);
	

}
