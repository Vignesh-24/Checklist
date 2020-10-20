package com.students.checklist.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.students.checklist.beans.Skills;

@Repository
public interface SkillRepository extends CrudRepository<Skills, Integer>{
	
	public Skills findByIdAndStudentUserIdentity(@Param("id") long id,@Param("identity") String identity);
	
	@Query(value ="Select * from skills where identity=:identity", nativeQuery = true)
	public List<Skills> findAllSkills(@Param("identity") String identity);
	
	@Transactional
	public void deleteByIdAndStudentUserIdentity(long id,String identity);

	
	
	

}
