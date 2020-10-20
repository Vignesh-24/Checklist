package com.students.checklist.beans;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class WrapperStaff {
	@Id
	private int id;
	private String name;
	private String designation;
	
	public WrapperStaff(String name, String designation) {
		this.name = name;
		this.designation = designation;
	}
	public WrapperStaff() {
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}

}
