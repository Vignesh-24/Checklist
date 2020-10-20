package com.students.checklist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Skills;
import com.students.checklist.controller.FileUploadController;
import com.students.checklist.repository.SkillRepository;

@Service
public class Service_Skills {
	
	@Autowired
	private SkillRepository skillRepository;
	
	@Autowired
	private FileUploadController uploadController;
	
	public Boolean addSkill(Skills skill) {
		if(null!= skillRepository.save(skill)) {
			return true;
		}
		else {
			return false;
		}
	}
	

	public List<Skills> findAllSkills(String identity){
		return (List<Skills>) skillRepository.findAllSkills(identity);
	}
	
	
	public Skills findSkill(long id,String identity) {
		Skills skill=skillRepository.findByIdAndStudentUserIdentity(id, identity);
		return skill;
	}
	
	
	public void deleteSkill(long id,String identity) {
		uploadController.deleteCertificate(findSkill(id, identity).getCertificate());
		skillRepository.deleteByIdAndStudentUserIdentity(id, identity);
	}

}
