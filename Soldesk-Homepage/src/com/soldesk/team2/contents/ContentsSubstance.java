package com.soldesk.team2.contents;

public class ContentsSubstance {
	private int scs_no;
	private String scs_main_title;
	private String scs_title;
	private String scs_info;

	public ContentsSubstance(int scs_no, String scs_main_title, String scs_title, String scs_info) {
		super();
		this.scs_no = scs_no;
		this.scs_main_title = scs_main_title;
		this.scs_title = scs_title;
		this.scs_info = scs_info;
	}
	public int getScs_no() {
		return scs_no;
	}
	public void setScs_no(int scs_no) {
		this.scs_no = scs_no;
	}
	public String getScs_main_title() {
		return scs_main_title;
	}
	public void setScs_main_title(String scs_main_title) {
		this.scs_main_title = scs_main_title;
	}
	public String getScs_title() {
		return scs_title;
	}
	public void setScs_title(String scs_title) {
		this.scs_title = scs_title;
	}
	public String getScs_info() {
		return scs_info;
	}
	public void setScs_info(String scs_info) {
		this.scs_info = scs_info;
	}
}
