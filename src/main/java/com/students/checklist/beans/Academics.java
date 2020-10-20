package com.students.checklist.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Academics {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@OneToOne
	@JoinColumn(name = "identity", referencedColumnName = "identity")
	private Student student;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private UG ug;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private PG pg;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private Diploma diploma;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private SSLC sslc;
	@OneToOne
	@Cascade(CascadeType.ALL)
	private HSC hsc;
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
	public UG getUg() {
		return ug;
	}
	public void setUg(UG ug) {
		this.ug = ug;
	}
	public PG getPg() {
		return pg;
	}
	public void setPg(PG pg) {
		this.pg = pg;
	}
	public Diploma getDiploma() {
		return diploma;
	}
	public void setDiploma(Diploma diploma) {
		this.diploma = diploma;
	}
	public SSLC getSslc() {
		return sslc;
	}
	public void setSslc(SSLC sslc) {
		this.sslc = sslc;
	}
	public HSC getHsc() {
		return hsc;
	}
	public void setHsc(HSC hsc) {
		this.hsc = hsc;
	}
}
