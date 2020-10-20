package com.students.checklist.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.students.checklist.beans.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	
	public User findByIdentity(String id);

}
