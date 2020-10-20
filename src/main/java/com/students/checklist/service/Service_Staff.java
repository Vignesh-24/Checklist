package com.students.checklist.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Staff;
import com.students.checklist.beans.Student;
import com.students.checklist.repository.StaffRepository;


@Service
public class Service_Staff {
	
	@Autowired
	private StaffRepository staffRepository;
	
	public boolean add(Staff staff,HttpServletRequest request) {
		staff.getUser().setRole("ADMIN");
		if(staffRepository.findByUserIdentity(staff.getUser().getIdentity())!=null) {
			return false;
		}
		if(staffRepository.save(staff)!=null) {
			return true;
		}
			
		else
			return false;
	}
	public List<Student> getStudents(String identity){
		return staffRepository.findByUserIdentity(identity).getStudents();
	}
	
	public boolean addStudents(String identity,int[] ids) {
		System.out.println("Here in");
		Staff staff=staffRepository.findByUserIdentity(identity);
	
		List<Student> students=staff.getStudents();
		students.addAll(getAll(ids));
		
		staff.setStudents(students);
		if(null!=staffRepository.save(staff)) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
	
	public List<Student> getAll(int[] ids){
		List<Student> students=new ArrayList<>();
		for(int i=0;i<ids.length;i++) {
			Student student=new Student();
			student.setId(ids[i]);
			students.add(student);
		}
		System.out.println("Sucess");
		return students;
	}

}
