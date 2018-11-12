package com.vince.entity;

public class score {
	private int id;
	private int stuid;
	private String name;
	private String classid;
	private int normal_score;
	private int middle_score;
	private int end_score;
	public score() {
		// TODO Auto-generated constructor stub
	}
	public score(int id, int stuid, String name, String classid, int normal_score, int middle_score, int end_score) {
		super();
		this.id = id;
		this.stuid = stuid;
		this.name = name;
		this.classid = classid;
		this.normal_score = normal_score;
		this.middle_score = middle_score;
		this.end_score = end_score;
	}
	public score(int stuid, String name, String classid, int normal_score, int middle_score, int end_score) {
		super();
		this.stuid = stuid;
		this.name = name;
		this.classid = classid;
		this.normal_score = normal_score;
		this.middle_score = middle_score;
		this.end_score = end_score;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public int getNormal_score() {
		return normal_score;
	}
	public void setNormal_score(int normal_score) {
		this.normal_score = normal_score;
	}
	public int getMiddle_score() {
		return middle_score;
	}
	public void setMiddle_score(int middle_score) {
		this.middle_score = middle_score;
	}
	public int getEnd_score() {
		return end_score;
	}
	public void setEnd_score(int end_score) {
		this.end_score = end_score;
	}
	@Override
	public String toString() {
		return "score [id=" + id + ", stuid=" + stuid + ", name=" + name + ", classid=" + classid + ", normal_score="
				+ normal_score + ", middle_score=" + middle_score + ", end_score=" + end_score + "]";
	}
	
}
