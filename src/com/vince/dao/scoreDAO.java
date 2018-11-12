package com.vince.dao;

import java.sql.SQLException;
import java.util.List;

import com.vince.entity.score;

public interface scoreDAO {
	public void add(score sc)throws SQLException;
	public void update(score sc)throws SQLException;
	public void delete(String stuid)throws SQLException;
	public score findById(String stuid)throws SQLException;
	public List<score> findAll()throws SQLException;
}