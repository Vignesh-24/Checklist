package com.students.checklist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.Projects;
import com.students.checklist.controller.FileUploadController;
import com.students.checklist.repository.ProjectRepository;

@Service
public class Service_Project {
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private FileUploadController uploadController;
	
	public Boolean addProject(Projects project) {
		if(null!= projectRepository.save(project)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	
	public List<Projects> findAllProjects(String identity){
		return (List<Projects>) projectRepository.findAllProjects(identity);
	}
	
	
	public Projects findProject(long id,String identity) {
		Projects project=projectRepository.findByIdAndStudentUserIdentity(id, identity);
		
		return project;
	}
	
	
	public void deleteProject(long id,String identity) {
		uploadController.deleteCertificate(findProject(id, identity).getCertificate());
		projectRepository.deleteByIdAndStudentUserIdentity(id, identity);
	}

}
