package com.students.checklist.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.students.checklist.beans.CheckList;
import com.students.checklist.beans.Student;
import com.students.checklist.repository.CheckListRepository;

@Service
public class Service_CheckList {
	
	@Autowired
	private CheckListRepository checkListRepository;
	
	@Autowired
	private Service_Student serve;
	
	public boolean submitForm(CheckList obj) {
		if(null!= checkListRepository.save(obj)) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
	public CheckList findbyId(String id,int year,String month) {
		return checkListRepository.findDetails(id, year, month);
	}
	
	
	public List<CheckList> findAll(String identity,HttpServletRequest request){
		List<CheckList> checkLists=checkListRepository.findByStudentUserIdentityOrderByYearAsc(identity);
		Student student=serve.get(identity, request);
		int yop=student.getYOP();
		
		checkLists=sortBy(checkLists,yop-2,yop-1);
		return checkLists;
	}
	
	
	
	
	public List<CheckList> sortBy(List<CheckList> checkLists,int year2,int year3){
		
		List<CheckList> finalchecks=new ArrayList<>(6);
		CheckList dummyCheckList=new CheckList();
		for(int i=0;i<6;i++) {
			finalchecks.add(dummyCheckList);
		}
		
		
		for(int i=0;i<checkLists.size();i++) {
			
			if(checkLists.get(i).getYear()==year2) {
				if(checkLists.get(i).getMonth().equals("Dec"))
					finalchecks.set(3, checkLists.get(i));
				else if(checkLists.get(i).getMonth().equals("Mar"))
					finalchecks.set(1, checkLists.get(i));
				else if(checkLists.get(i).getMonth().equals("Jun"))
					finalchecks.set(2, checkLists.get(i));
				
			}
			
			
			else if(checkLists.get(i).getYear()==year3){
				if(checkLists.get(i).getMonth().equals("Mar"))
					finalchecks.set(4, checkLists.get(i));
				else if(checkLists.get(i).getMonth().equals("Jun"))
					finalchecks.set(5,checkLists.get(i));
				
			}
			else {
				finalchecks.set(0, checkLists.get(0));
			}
		
		}
		
		
		
		return finalchecks;
	}

}
