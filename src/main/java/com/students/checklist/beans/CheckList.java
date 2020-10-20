package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CheckList {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@ManyToOne
	@JoinColumn(name = "identityref",referencedColumnName = "identity")
	private Student student;
	@Column(length = 35)
	private String mini_project;
	@Column(length = 35)
	private String certification;
	@Column(length = 35)
	private String deptSpecific;
	@Column(length = 35)
	private String workshops;
	@Column(length = 35)
	private String bec_certification;
	@Column(length = 35)
	private String apt_level;
	@Column(length = 35)
	private String coding_level;
	@Column(length = 35)
	private String languages;
	@Column(length = 35)
	private String amcat_score;
	@Column(length = 35)
	private String Gate_score;
	@Column(length = 35)
	private String gre_score;
	@Column(length = 35)
	private String LinkedIn;
	private int inplants;
	private int internships;
	@Column(length = 35)
	private String github;
	@Column(length = 35)
	private String hack_coding_comp;
	@Column(length = 35)
	private String symposium;
	@Column(length = 35)
	private String journal;
	@Column(length = 35)
	private String phase_1;
	@Column(length = 35)
	private String C_training;
	@Column(length = 35)
	private String dept_training;
	@Column(length = 35)
	private String apt_training;
	@Column(length = 35)
	private String com_training;
	@Column(length = 35)
	private String month;
	private int year;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getMini_project() {
		return mini_project;
	}
	public void setMini_project(String mini_project) {
		this.mini_project = mini_project;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getDeptSpecific() {
		return deptSpecific;
	}
	public void setDeptSpecific(String deptSpecific) {
		this.deptSpecific = deptSpecific;
	}
	public String getWorkshops() {
		return workshops;
	}
	public void setWorkshops(String workshops) {
		this.workshops = workshops;
	}
	public String getBec_certification() {
		return bec_certification;
	}
	public void setBec_certification(String bec_certification) {
		this.bec_certification = bec_certification;
	}
	public String getApt_level() {
		return apt_level;
	}
	public void setApt_level(String apt_level) {
		this.apt_level = apt_level;
	}
	public String getCoding_level() {
		return coding_level;
	}
	public void setCoding_level(String coding_level) {
		this.coding_level = coding_level;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
	public String getAmcat_score() {
		return amcat_score;
	}
	public void setAmcat_score(String amcat_score) {
		this.amcat_score = amcat_score;
	}
	public String getGate_score() {
		return Gate_score;
	}
	public void setGate_score(String gate_score) {
		Gate_score = gate_score;
	}
	public String getGre_score() {
		return gre_score;
	}
	public void setGre_score(String gre_score) {
		this.gre_score = gre_score;
	}
	public String getLinkedIn() {
		return LinkedIn;
	}
	public void setLinkedIn(String linkedIn) {
		LinkedIn = linkedIn;
	}
	public int getInplants() {
		return inplants;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public void setInplants(int inplants) {
		this.inplants = inplants;
	}
	public int getInternships() {
		return internships;
	}
	public void setInternships(int internships) {
		this.internships = internships;
	}
	public String getGithub() {
		return github;
	}
	public void setGithub(String github) {
		this.github = github;
	}
	public String getHack_coding_comp() {
		return hack_coding_comp;
	}
	public void setHack_coding_comp(String hack_coding_comp) {
		this.hack_coding_comp = hack_coding_comp;
	}
	public String getSymposium() {
		return symposium;
	}
	public void setSymposium(String symposium) {
		this.symposium = symposium;
	}
	public String getJournal() {
		return journal;
	}
	public void setJournal(String journal) {
		this.journal = journal;
	}
	public String getPhase_1() {
		return phase_1;
	}
	public void setPhase_1(String phase_1) {
		this.phase_1 = phase_1;
	}
	public String getC_training() {
		return C_training;
	}
	public void setC_training(String c_training) {
		C_training = c_training;
	}
	public String getDept_training() {
		return dept_training;
	}
	public void setDept_training(String dept_training) {
		this.dept_training = dept_training;
	}
	public String getApt_training() {
		return apt_training;
	}
	public void setApt_training(String apt_training) {
		this.apt_training = apt_training;
	}
	public String getCom_training() {
		return com_training;
	}
	public void setCom_training(String com_training) {
		this.com_training = com_training;
	}
	
	
	
	

}
