package com.students.checklist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Internships;
import com.students.checklist.controller.FileUploadController;
import com.students.checklist.repository.InternRepository;

@Service
public class Service_intern {
	
	@Autowired
	private InternRepository internRepository;
	
	@Autowired
	private FileUploadController uploadController;
	
	public Boolean addIntern(Internships intern) {
		if(null!= internRepository.save(intern)) {
			return true;
		}
		else {
			return false;
		}
	}
	

	public List<Internships> findAllInternships(String identity){
		return (List<Internships>) internRepository.findAllInternships(identity);
	}
	
	
	public Internships findIntern(long id,String identity) {
		Internships skill=internRepository.findByIdAndStudentUserIdentity(id, identity);
		return skill;
	}
	
	
	public void deleteIntern(long id,String identity) {
		
	 uploadController.deleteCertificate(findIntern(id, identity).getCertificate());	
	 internRepository.deleteByIdAndStudentUserIdentity(id, identity);
	}


}
