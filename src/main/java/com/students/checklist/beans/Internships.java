package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Internships {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@ManyToOne
	@JoinColumn(name = "identity", referencedColumnName = "identity")
	private Student student;
	@Column(length = 60)
	private String company;
	@Column(length = 40)
	private String location;
	@Column(length = 30)
	private String duration;
	private int sem;
	private int year;
	@Column(length = 15)
	private String month;
	@Column(length = 100)
	private String certificate;



	public Internships() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Internships(Student student, String company, String location, String duration, int sem, int year,String month) {
		super();
		this.student = student;
		this.company = company;
		this.location = location;
		this.duration = duration;
		this.sem = sem;
		this.year = year;
		this.month = month;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public int getSem() {
		return sem;
	}
	
	public void setSem(int sem) {
		this.sem = sem;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getCertificate() {
		return certificate;
	}


	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	

}
