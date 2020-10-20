package com.students.checklist.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.students.checklist.beans.WrapperStaff;

public interface WrapperRepository extends CrudRepository<WrapperStaff, Integer>{
	
	@Query(value = "Select u.id,u.name,s.designation from user u inner join staff s where s.identity=(select identity from staff where id=(Select staff_id from staff_students where students_id=?1)) and s.identity=u.identity;",nativeQuery = true)
	public WrapperStaff findStaff(long id);

}
