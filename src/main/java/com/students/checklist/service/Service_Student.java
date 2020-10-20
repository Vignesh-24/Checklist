package com.students.checklist.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.students.checklist.beans.Student;
import com.students.checklist.beans.WrapperStaff;
import com.students.checklist.controller.FileUploadController;

import com.students.checklist.repository.StudentRepository;
import com.students.checklist.repository.WrapperRepository;

@Service
public class Service_Student {
	
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private WrapperRepository repository;
	
	@Autowired
	private FileUploadController fileUploadController;
	
	private HttpSession session;
	
	public Student add(Student student,MultipartFile file) {
		if(null != studentRepository.findByUserIdentity(student.getUser().getIdentity())) {
			return null;
		}
		String folder;
		
		folder=this.uploadImg(student.getUser().getIdentity(),file);
		student.setImg(folder);
		
		
		Student students=studentRepository.save(student);
		return students;
	}
	
	public Student get(String identity,HttpServletRequest request) {
		session=request.getSession(false);
		if(session.getAttribute("role").equals("ADMIN")) {
			session.removeAttribute("student");
		}
		if(session.getAttribute("student")==null) {
			session.setAttribute("student",studentRepository.findByUserIdentity(identity));
		}
		return (Student) session.getAttribute("student");
		
	}
	
	
	
	public String uploadImg(String identity,MultipartFile file){
		
		String filename=identity + file.getOriginalFilename();
		Path fileNameAndPath = Paths.get(fileUploadController.uploadDirectory, filename);
			try {
				Files.write(fileNameAndPath, file.getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	
		return filename;
	}
	
	
	
	public List<Student> findStudents(String sec,String branch,int year){
		List<Student> students=studentRepository.findBySectionAndBranchAndYOP(sec, branch, year);
		if(students.size()==0) {
			return null;
		}
		return students;
	}
	
	public WrapperStaff getStaff(long id) {
		return repository.findStaff(id);
	}
	
	
	public boolean update(Student student) {
		
		if(studentRepository.save(student)!=null)
			return true;
		else
			return false;
	}
	
	
	public void updateImage(Student student) {
		studentRepository.save(student);
		
	}
	
	

}
