package com.vince.dao;

import java.sql.SQLException;
import java.util.List;

import com.vince.entity.message;

public interface messageDAO {
	public void add(message m)throws SQLException;
	public void update(message m)throws SQLException;
	public void delete(String name)throws SQLException;
	public List<message> findAll()throws SQLException;
}