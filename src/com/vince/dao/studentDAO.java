package com.vince.dao;

import java.sql.SQLException;
import java.util.List;

import com.vince.entity.student;

public interface studentDAO {
	public void add(student s)throws SQLException;
	public void update(student s)throws SQLException;
	public void delete(String stuid)throws SQLException;
	public student findById(String stuid)throws SQLException;
	public List<student> findAll()throws SQLException;
}