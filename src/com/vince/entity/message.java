package com.vince.entity;

public class message {
	private int id;
	private String name;
	private String mail;
	private String content;
	public message() {
		// TODO Auto-generated constructor stub
	}
	public message(int id, String name, String mail, String content) {
		super();
		this.id = id;
		this.name = name;
		this.mail = mail;
		this.content = content;
	}

	public message(String name, String mail, String content) {
		super();
		this.name = name;
		this.mail = mail;
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "message [id=" + id + ", name=" + name + ", mail=" + mail + ", content=" + content + "]";
	}
	
}
