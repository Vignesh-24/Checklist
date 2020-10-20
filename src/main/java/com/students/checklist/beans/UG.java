package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UG {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(length = 60)
	private String board;
	@Column(length = 60)
	private String specialization;
	private int year_of_passing;
	private double cgpa;
	private double sem1,sem2,sem3,sem4,sem5,sem6,sem7;
	
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
	public double getSem4() {
		return sem4;
	}
	public void setSem4(double sem4) {
		this.sem4 = sem4;
	}
	public double getSem5() {
		return sem5;
	}
	public void setSem5(double sem5) {
		this.sem5 = sem5;
	}
	public double getSem6() {
		return sem6;
	}
	public void setSem6(double sem6) {
		this.sem6 = sem6;
	}
	public double getSem7() {
		return sem7;
	}
	public void setSem7(double sem7) {
		this.sem7 = sem7;
	}
	
	
}