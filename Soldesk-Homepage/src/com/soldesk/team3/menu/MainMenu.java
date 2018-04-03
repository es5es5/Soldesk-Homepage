package com.soldesk.team3.menu;

import java.util.ArrayList;

public class MainMenu {
	
	private int sm_no;
	private String sm_name;
	private ArrayList<SubMenu> sms;

	public MainMenu() {

	}

	public MainMenu(int sm_no, String sm_name, ArrayList<SubMenu> sms) {
		super();
		this.sm_no = sm_no;
		this.sm_name = sm_name;
		this.sms = sms;
	}

	public int getSm_no() {
		return sm_no;
	}

	public void setSm_no(int sm_no) {
		this.sm_no = sm_no;
	}

	public String getSm_name() {
		return sm_name;
	}

	public void setSm_name(String sm_name) {
		this.sm_name = sm_name;
	}

	public ArrayList<SubMenu> getSms() {
		return sms;
	}

	public void setSms(ArrayList<SubMenu> sms) {
		this.sms = sms;
	}

}
