package com.students.checklist.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Amcat {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private double quants;
	private double nonverb;
	private double verb;
	private double program;
	private double automata;
	private double domain;
	public double getQuants() {
		return quants;
	}
	public void setQuants(double quants) {
		this.quants = quants;
	}
	public double getNonverb() {
		return nonverb;
	}
	public void setNonverb(double nonverb) {
		this.nonverb = nonverb;
	}
	public double getVerb() {
		return verb;
	}
	public void setVerb(double verb) {
		this.verb = verb;
	}
	public double getProgram() {
		return program;
	}
	public void setProgram(double program) {
		this.program = program;
	}
	public double getAutomata() {
		return automata;
	}
	public void setAutomata(double automata) {
		this.automata = automata;
	}
	public double getDomain() {
		return domain;
	}
	public void setDomain(double domain) {
		this.domain = domain;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

}
