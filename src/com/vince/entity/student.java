package com.vince.entity;

public class student {
	private int id;
	private int stuid;
	private String classid;
	private String name;
	private String mail;
	private int phone;
	private String remarks;
	public student() {
		// TODO Auto-generated constructor stub
	}
	public student(int stuid, String classid, String name, String mail, int phone, String remarks) {
		super();
		this.stuid = stuid;
		this.classid = classid;
		this.name = name;
		this.mail = mail;
		this.phone = phone;
		this.remarks = remarks;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "student [stuid=" + stuid + ", classid=" + classid + ", name=" + name + ", mail=" + mail + ", phone="
				+ phone + ", remarks=" + remarks + "]";
	}

	
}
