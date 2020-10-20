package com.students.checklist.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.CheckList;

@Repository
public interface CheckListRepository extends CrudRepository<CheckList, Integer>{
	
	@Query(value ="select * from check_list where identityref=:identity and year=:year and month=:month" ,nativeQuery = true)
	public CheckList findDetails(@Param("identity") String identity,@Param("year") Integer year, @Param("month") String month);
	
	
	
	public List<CheckList> findByStudentUserIdentityOrderByYearAsc(String identity); 
	

}
