package com.students.checklist.repository;




import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.Staff;


@Repository
public interface StaffRepository extends CrudRepository<Staff, Integer> {
	
	
	public Staff findByUserIdentity(@Param("identity") String identity);

}
