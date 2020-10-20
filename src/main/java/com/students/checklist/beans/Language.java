package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Language {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(length = 60)
	private String name;
	private Boolean is_speak;
	private Boolean is_read;

	private Boolean is_write;
	private String certification;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public Boolean getIs_speak() {
		return is_speak;
	}
	public void setIs_speak(Boolean is_speak) {
		this.is_speak = is_speak;
	}
	public Boolean getIs_read() {
		return is_read;
	}
	public void setIs_read(Boolean is_read) {
		this.is_read = is_read;
	}
	public Boolean getIs_write() {
		return is_write;
	}
	public void setIs_write(Boolean is_write) {
		this.is_write = is_write;
	}
	

}
