package com.students.checklist.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Student;


@Repository
public interface StudentRepository extends CrudRepository<Student, Integer> {
	
	public Student findByUserIdentity(String rollno);
	
	
	@Query(value = "select * from student where branch=?2 and section=?1 and yop=?3 and id NOT IN (select students_id from staff_students)",nativeQuery = true)
	public List<Student> findBySectionAndBranchAndYOP(String section,String branch,int yop);
	

	

}
