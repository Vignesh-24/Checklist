package com.students.checklist.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Skillrack {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 15)
	private String code_sem_4;
	@Column(length = 15)
	private String code_sem_5;
	@Column(length = 15)
	private String code_sem_6;
	@Column(length = 15)
	private String code_sem_7;
	@Column(length = 15)
	private String code_sem_8;
	private double code_percent_4;
	private double code_percent_5;
	private double code_percent_6;
	private double code_percent_7;
	private double code_percent_8;
	
	private double apt_att_2;
	private double apt_att_3;
	private double apt_att_4;
	private double apt_att_5;
	private double apt_att_6;
	private double apt_att_7;
	private double apt_att_8;
	
	private double apt_cum_2;
	private double apt_cum_3;
	private double apt_cum_4;
	private double apt_cum_5;
	private double apt_cum_6;
	private double apt_cum_7;
	private double apt_cum_8;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCode_sem_4() {
		return code_sem_4;
	}
	public void setCode_sem_4(String code_sem_4) {
		this.code_sem_4 = code_sem_4;
	}
	public String getCode_sem_5() {
		return code_sem_5;
	}
	public void setCode_sem_5(String code_sem_5) {
		this.code_sem_5 = code_sem_5;
	}
	public String getCode_sem_6() {
		return code_sem_6;
	}
	public void setCode_sem_6(String code_sem_6) {
		this.code_sem_6 = code_sem_6;
	}
	public String getCode_sem_7() {
		return code_sem_7;
	}
	public void setCode_sem_7(String code_sem_7) {
		this.code_sem_7 = code_sem_7;
	}
	public String getCode_sem_8() {
		return code_sem_8;
	}
	public void setCode_sem_8(String code_sem_8) {
		this.code_sem_8 = code_sem_8;
	}
	public double getCode_percent_4() {
		return code_percent_4;
	}
	public void setCode_percent_4(double code_percent_4) {
		this.code_percent_4 = code_percent_4;
	}
	public double getCode_percent_5() {
		return code_percent_5;
	}
	public void setCode_percent_5(double code_percent_5) {
		this.code_percent_5 = code_percent_5;
	}
	public double getCode_percent_6() {
		return code_percent_6;
	}
	public void setCode_percent_6(double code_percent_6) {
		this.code_percent_6 = code_percent_6;
	}
	public double getCode_percent_7() {
		return code_percent_7;
	}
	public void setCode_percent_7(double code_percent_7) {
		this.code_percent_7 = code_percent_7;
	}
	public double getCode_percent_8() {
		return code_percent_8;
	}
	public void setCode_percent_8(double code_percent_8) {
		this.code_percent_8 = code_percent_8;
	}
	public double getApt_att_2() {
		return apt_att_2;
	}
	public void setApt_att_2(double apt_att_2) {
		this.apt_att_2 = apt_att_2;
	}
	public double getApt_att_3() {
		return apt_att_3;
	}
	public void setApt_att_3(double apt_att_3) {
		this.apt_att_3 = apt_att_3;
	}
	public double getApt_att_4() {
		return apt_att_4;
	}
	public void setApt_att_4(double apt_att_4) {
		this.apt_att_4 = apt_att_4;
	}
	public double getApt_att_5() {
		return apt_att_5;
	}
	public void setApt_att_5(double apt_att_5) {
		this.apt_att_5 = apt_att_5;
	}
	public double getApt_att_6() {
		return apt_att_6;
	}
	public void setApt_att_6(double apt_att_6) {
		this.apt_att_6 = apt_att_6;
	}
	public double getApt_att_7() {
		return apt_att_7;
	}
	public void setApt_att_7(double apt_att_7) {
		this.apt_att_7 = apt_att_7;
	}
	public double getApt_att_8() {
		return apt_att_8;
	}
	public void setApt_att_8(double apt_att_8) {
		this.apt_att_8 = apt_att_8;
	}
	public double getApt_cum_2() {
		return apt_cum_2;
	}
	public void setApt_cum_2(double apt_cum_2) {
		this.apt_cum_2 = apt_cum_2;
	}
	public double getApt_cum_3() {
		return apt_cum_3;
	}
	public void setApt_cum_3(double apt_cum_3) {
		this.apt_cum_3 = apt_cum_3;
	}
	public double getApt_cum_4() {
		return apt_cum_4;
	}
	public void setApt_cum_4(double apt_cum_4) {
		this.apt_cum_4 = apt_cum_4;
	}
	public double getApt_cum_5() {
		return apt_cum_5;
	}
	public void setApt_cum_5(double apt_cum_5) {
		this.apt_cum_5 = apt_cum_5;
	}
	public double getApt_cum_6() {
		return apt_cum_6;
	}
	public void setApt_cum_6(double apt_cum_6) {
		this.apt_cum_6 = apt_cum_6;
	}
	public double getApt_cum_7() {
		return apt_cum_7;
	}
	public void setApt_cum_7(double apt_cum_7) {
		this.apt_cum_7 = apt_cum_7;
	}
	public double getApt_cum_8() {
		return apt_cum_8;
	}
	public void setApt_cum_8(double apt_cum_8) {
		this.apt_cum_8 = apt_cum_8;
	}
	

}
