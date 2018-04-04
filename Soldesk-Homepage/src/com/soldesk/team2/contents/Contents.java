package com.soldesk.team2.contents;

import java.sql.Date;

public class Contents {
	private String sc_category;
	private String sc_title;
	private String sc_teacher;
	private Date sc_schedule_start;
	private Date sc_schedule_finish;
	private int sc_week;
	private Date sc_time_start;
	private Date sc_time_finish;
	private int sc_capacity;
	private int sc_expense;
	
	public Contents(String sc_category, String sc_title, String sc_teacher, Date sc_schedule_start,
			Date sc_schedule_finish, int sc_week, Date sc_time_start, Date sc_time_finish, int sc_capacity,
			int sc_expense) {
		super();
		this.sc_category = sc_category;
		this.sc_title = sc_title;
		this.sc_teacher = sc_teacher;
		this.sc_schedule_start = sc_schedule_start;
		this.sc_schedule_finish = sc_schedule_finish;
		this.sc_week = sc_week;
		this.sc_time_start = sc_time_start;
		this.sc_time_finish = sc_time_finish;
		this.sc_capacity = sc_capacity;
		this.sc_expense = sc_expense;
	}
	public String getSc_category() {
		return sc_category;
	}
	public void setSc_category(String sc_category) {
		this.sc_category = sc_category;
	}
	public String getSc_title() {
		return sc_title;
	}
	public void setSc_title(String sc_title) {
		this.sc_title = sc_title;
	}
	public String getSc_teacher() {
		return sc_teacher;
	}
	public void setSc_teacher(String sc_teacher) {
		this.sc_teacher = sc_teacher;
	}
	public Date getSc_schedule_start() {
		return sc_schedule_start;
	}
	public void setSc_schedule_start(Date sc_schedule_start) {
		this.sc_schedule_start = sc_schedule_start;
	}
	public Date getSc_schedule_finish() {
		return sc_schedule_finish;
	}
	public void setSc_schedule_finish(Date sc_schedule_finish) {
		this.sc_schedule_finish = sc_schedule_finish;
	}
	public int getSc_week() {
		return sc_week;
	}
	public void setSc_week(int sc_week) {
		this.sc_week = sc_week;
	}
	public Date getSc_time_start() {
		return sc_time_start;
	}
	public void setSc_time_start(Date sc_time_start) {
		this.sc_time_start = sc_time_start;
	}
	public Date getSc_time_finish() {
		return sc_time_finish;
	}
	public void setSc_time_finish(Date sc_time_finish) {
		this.sc_time_finish = sc_time_finish;
	}
	public int getSc_capacity() {
		return sc_capacity;
	}
	public void setSc_capacity(int sc_capacity) {
		this.sc_capacity = sc_capacity;
	}
	public int getSc_expense() {
		return sc_expense;
	}
	public void setSc_expense(int sc_expense) {
		this.sc_expense = sc_expense;
	}
	
	
}
