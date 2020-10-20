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
public class OnlineAssessment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	
	@OneToOne
	@Cascade(CascadeType.ALL)
	private Amcat amcat1;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private Amcat amcat2;
	@OneToOne
	@JoinColumn(name = "identity", referencedColumnName = "identity")
	private Student student;
	
	
	@Column(length = 15)
	private String bec_level;
	@Column(length = 20)
	private String bec_month_year;
	@Column(length = 20)
	private String  bec_grade;
	@Column(length = 100)
	private String bec_cert;
	
	private double gate_score;
	@Column(length = 20)
	private String gate_month_year;
	@Column(length = 100)
	private String gate_cert;
	private double gre_score;
	@Column(length = 20)
	private String gre_month_year;
	@Column(length = 100)
	private String gre_cert;
	
	public String getBec_cert() {
		return bec_cert;
	}
	public void setBec_cert(String bec_cert) {
		this.bec_cert = bec_cert;
	}
	public String getGate_cert() {
		return gate_cert;
	}
	public void setGate_cert(String gate_cert) {
		this.gate_cert = gate_cert;
	}
	public String getGre_cert() {
		return gre_cert;
	}
	public void setGre_cert(String gre_cert) {
		this.gre_cert = gre_cert;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Amcat getAmcat1() {
		return amcat1;
	}
	public void setAmcat1(Amcat amcat1) {
		this.amcat1 = amcat1;
	}
	public Amcat getAmcat2() {
		return amcat2;
	}
	public void setAmcat2(Amcat amcat2) {
		this.amcat2 = amcat2;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getBec_level() {
		return bec_level;
	}
	public void setBec_level(String bec_level) {
		this.bec_level = bec_level;
	}
	public String getBec_month_year() {
		return bec_month_year;
	}
	public void setBec_month_year(String bec_month_year) {
		this.bec_month_year = bec_month_year;
	}
	public String getBec_grade() {
		return bec_grade;
	}
	public void setBec_grade(String bec_grade) {
		this.bec_grade = bec_grade;
	}
	public double getGate_score() {
		return gate_score;
	}
	public void setGate_score(double gate_score) {
		this.gate_score = gate_score;
	}
	public String getGate_month_year() {
		return gate_month_year;
	}
	public void setGate_month_year(String gate_month_year) {
		this.gate_month_year = gate_month_year;
	}
	public double getGre_score() {
		return gre_score;
	}
	public void setGre_score(double gre_score) {
		this.gre_score = gre_score;
	}
	public String getGre_month_year() {
		return gre_month_year;
	}
	public void setGre_month_year(String gre_month_year) {
		this.gre_month_year = gre_month_year;
	}
	
	
	

}
