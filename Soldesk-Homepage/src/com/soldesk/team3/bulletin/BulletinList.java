package com.soldesk.team3.bulletin;

import java.util.Date;

public class BulletinList {
	
	private int wn_no;
	private String wn_title;
	private String wn_txt;
	private Date wn_date;

	public BulletinList() {
		// TODO Auto-generated constructor stub
	}

	public BulletinList(int wn_no, String wn_title, String wn_txt, Date wn_date) {
		super();
		this.wn_no = wn_no;
		this.wn_title = wn_title;
		this.wn_txt = wn_txt;
		this.wn_date = wn_date;
	}

	public int getWn_no() {
		return wn_no;
	}

	public void setWn_no(int wn_no) {
		this.wn_no = wn_no;
	}

	public String getWn_title() {
		return wn_title;
	}

	public void setWn_title(String wn_title) {
		this.wn_title = wn_title;
	}

	public String getWn_txt() {
		return wn_txt;
	}

	public void setWn_txt(String wn_txt) {
		this.wn_txt = wn_txt;
	}

	public Date getWn_date() {
		return wn_date;
	}

	public void setWn_date(Date wn_date) {
		this.wn_date = wn_date;
	}

}
