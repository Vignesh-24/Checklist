package com.students.checklist.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.students.checklist.beans.Student;
import com.students.checklist.service.Service_Student;

@Controller
public class FileUploadController {
	
	
	//public static String uploadDirectory=Paths.get("").toAbsolutePath().toString() + "/images";
	
	@Value("${upload.path}")
	public String uploadDirectory;

	
	@Autowired
	Service_Student serve;
  
	@GetMapping("/uploadImg")
	public String upl() {
		return "upload";
	}
  
	// for profile picture change
	
  @PostMapping("/upload")
  public String upload(@RequestParam("img") MultipartFile file,HttpServletRequest request) {
	  
	  HttpSession session=request.getSession(false);
		if(null==session.getAttribute("user")) {
			return "redirect:/";
		}
		String filename=session.getAttribute("id").toString() + file.getOriginalFilename();
		Path fileNameAndPath = Paths.get(uploadDirectory, filename);
		  
		  try {
			Files.write(fileNameAndPath, file.getBytes());
	
			Student student=(Student) session.getAttribute("student");
			String delpath=student.getImg();
			student.setImg(filename);
			serve.updateImage(student);
			session.removeAttribute("student");
			session.setAttribute("student", student);
			
			
			//deleting previous image
			
			Path fileToDeletePath = Paths.get(uploadDirectory+"/"+delpath);
			Files.delete(fileToDeletePath);
			
			
		} catch (IOException e) {
			
			
			e.printStackTrace();
		}
	  
	  return "redirect:/profile";
  }
  
  
  //handling certificate upload
  
  public String uploadCertificate(MultipartFile file,String identity) {
	  String file_name=identity+file.getOriginalFilename();
	  Path fileNameAndPath = Paths.get(uploadDirectory, file_name);
	  
	  try {
		  Files.write(fileNameAndPath, file.getBytes());
		  return file_name;
	  }
	  catch (Exception e) {
		return "NA";
	}
	  
  }
  
  
  public boolean deleteCertificate(String file_name) {
	  
	  if(file_name.equals("NA"))
		  return true;
	  
	  Path fileToDeletePath = Paths.get(uploadDirectory+"/"+file_name);
	  try {
		  Files.delete(fileToDeletePath);
		  return true;
	} catch (Exception e) {
		return false;
	}
  }
  
  
  public String updateCertificate(MultipartFile file, String del,String identity) {
	  String file_name;
	  if(del.equals("NA"))
		  file_name=uploadCertificate(file, identity);
	  else
	  {
		  if(deleteCertificate(del))
			  file_name=uploadCertificate(file, identity);
		  else {
			  System.out.println("Deletion failed...");
			  System.out.println("Uploading new...");
			  file_name=uploadCertificate(file, identity);
		  }
	  }
	  
	  return file_name;
  }
  
  
}
