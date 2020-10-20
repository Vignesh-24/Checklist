package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PG {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(length = 60)
	private String board;
	@Column(length = 60)
	private String specialization;
	private int year_of_passing;
	private double cgpa;
	private double sem1,sem2,sem3;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getBoard() {
		return board;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public int getYear_of_passing() {
		return year_of_passing;
	}
	public void setYear_of_passing(int year_of_passing) {
		this.year_of_passing = year_of_passing;
	}
	public double getCgpa() {
		return cgpa;
	}
	public void setCgpa(double cgpa) {
		this.cgpa = cgpa;
	}
	public double getSem1() {
		return sem1;
	}
	public void setSem1(double sem1) {
		this.sem1 = sem1;
	}
	public double getSem2() {
		return sem2;
	}
	public void setSem2(double sem2) {
		this.sem2 = sem2;
	}
	public double getSem3() {
		return sem3;
	}
	public void setSem3(double sem3) {
		this.sem3 = sem3;
	}

}
