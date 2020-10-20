package com.students.checklist.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.students.checklist.beans.Courses;
import com.students.checklist.controller.FileUploadController;
import com.students.checklist.repository.CourseRepository;

@Service
public class Service_Courses {
	
	@Autowired
	private CourseRepository courseRepository;
	
	@Autowired
	private FileUploadController uploadController;
	
	public Boolean addCourse(Courses course) {
		if(null!= courseRepository.save(course)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	
	public List<Courses> findAllCourses(String identity){
		return (List<Courses>) courseRepository.findAllCourses(identity);
	}
	
	
	public Courses findCourse(long id,String identity) {
		Courses course=courseRepository.findByIdAndStudentUserIdentity(id,identity);
		return course;
	}
	
	
	public void deleteCourse(long id,String identity) {
		
		uploadController.deleteCertificate(findCourse(id, identity).getCertificate());
		courseRepository.deleteByIdAndStudentUserIdentity(id, identity);
	}

}
