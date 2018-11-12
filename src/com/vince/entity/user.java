package com.vince.entity;

public class user {
	private int id;
	private String user;
	private String password;
	private int role;
	public user() {
		// TODO Auto-generated constructor stub
	}
	public user(int id, String user, String password, int role) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.role = role;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", user=" + user + ", password=" + password + ", role=" + role + "]";
	}
	
}
