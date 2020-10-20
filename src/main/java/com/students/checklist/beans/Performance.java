package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Performance {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@OneToOne
	@JoinColumn(name = "identity",referencedColumnName = "identity")
	private Student student;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private Skillrack skillrack;
	@Column(length = 15)
	private String sem1;
	@Column(length = 15)
	private String sem2;
	@Column(length = 15)
	private String sem3;
	@Column(length = 15)
	private String sem4;
	@Column(length = 15)
	private String sem5;
	@Column(length = 15)
	private String sem6;
	@Column(length = 15)
	private String sem7;
	

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Skillrack getSkillrack() {
		return skillrack;
	}
	public void setSkillrack(Skillrack skillrack) {
		this.skillrack = skillrack;
	}
	public String getSem1() {
		return sem1;
	}
	public void setSem1(String sem1) {
		this.sem1 = sem1;
	}
	public String getSem2() {
		return sem2;
	}
	public void setSem2(String sem2) {
		this.sem2 = sem2;
	}
	public String getSem3() {
		return sem3;
	}
	public void setSem3(String sem3) {
		this.sem3 = sem3;
	}
	public String getSem4() {
		return sem4;
	}
	public void setSem4(String sem4) {
		this.sem4 = sem4;
	}
	public String getSem5() {
		return sem5;
	}
	public void setSem5(String sem5) {
		this.sem5 = sem5;
	}
	public String getSem6() {
		return sem6;
	}
	public void setSem6(String sem6) {
		this.sem6 = sem6;
	}
	public String getSem7() {
		return sem7;
	}
	public void setSem7(String sem7) {
		this.sem7 = sem7;
	}
	
	
}
