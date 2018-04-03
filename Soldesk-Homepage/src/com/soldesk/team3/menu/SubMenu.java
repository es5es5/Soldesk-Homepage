package com.soldesk.team3.menu;

public class SubMenu {
	
	private int ss_no;
	private String ss_name;
	private int ss_mainMenuNo;
	private int ss_type;
	
	public SubMenu() {
		
	}

	public SubMenu(int ss_no, String ss_name, int ss_mainMenuNo, int ss_type) {
		super();
		this.ss_no = ss_no;
		this.ss_name = ss_name;
		this.ss_mainMenuNo = ss_mainMenuNo;
		this.ss_type = ss_type;
	}

	public int getSs_no() {
		return ss_no;
	}

	public void setSs_no(int ss_no) {
		this.ss_no = ss_no;
	}

	public String getSs_name() {
		return ss_name;
	}

	public void setSs_name(String ss_name) {
		this.ss_name = ss_name;
	}

	public int getSs_mainMenuNo() {
		return ss_mainMenuNo;
	}

	public void setSs_mainMenuNo(int ss_mainMenuNo) {
		this.ss_mainMenuNo = ss_mainMenuNo;
	}

	public int getSs_type() {
		return ss_type;
	}

	public void setSs_type(int ss_type) {
		this.ss_type = ss_type;
	}

}
