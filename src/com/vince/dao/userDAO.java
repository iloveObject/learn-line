package com.vince.dao;

import java.sql.SQLException;
import java.util.List;

import com.vince.entity.user;

public interface userDAO {
	public void add(user u)throws SQLException;
	public void update(user u)throws SQLException;
	public void delete(String user)throws SQLException;
	public List<user> findAll()throws SQLException;
}