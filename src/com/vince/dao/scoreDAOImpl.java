package com.vince.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vince.base.ResultSetHandler;
import com.vince.dao.scoreDAO;
import com.vince.entity.score;
import com.util.db.JdbcTemplete;
/**
 * studentDAO的具体实现
 * @author Administrator
 *
 */
public class scoreDAOImpl implements scoreDAO{
	private JdbcTemplete JdbcTemplete;
	public scoreDAOImpl() {
		JdbcTemplete = new JdbcTemplete();
	}
	//添加成绩
	public void add(score sc) throws SQLException {
		String sql = "insert into score(stuid,name,class,normal_score,middle_score,end_score)values(?,?,?,?,?,?)";
		JdbcTemplete.update(sql,sc.getStuid(),sc.getName(),sc.getClassid(),sc.getNormal_score(),sc.getMiddle_score(),sc.getEnd_score());
	}
	//修改成绩
	public void update(score sc) throws SQLException {
		String sql = "update score set name=?,class=?,normal_score=?,middle_score=?,end_score=? where stuid = ?";
		JdbcTemplete.update(sql,sc.getName(),sc.getClassid(),sc.getNormal_score(),sc.getMiddle_score(),sc.getEnd_score(),sc.getStuid());
	}
	//删除成绩
	public void delete(String stuid) throws SQLException {
		String sql = "delete from score where stuid = ?";
		JdbcTemplete.update(sql,stuid);
	}
	//查找成绩
	public score findById(String stuid) throws SQLException {
		String sql = "select stuid,name,class,normal_score,middle_score,end_score from score where stuid = ?";
		return (score) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				score s = null;
				if(rs.next()) {
					s= new score();
					s.setStuid(rs.getInt(1));
					s.setName(rs.getString(2));
					s.setClassid(rs.getString(3));
					s.setNormal_score(rs.getInt(4));
					s.setMiddle_score(rs.getInt(5));
					s.setEnd_score(rs.getInt(6));
					
				}
				return s;
			}
		},stuid);
	}

	@SuppressWarnings("unchecked")
	public List<score> findAll() throws SQLException {
		String sql = "select id,stuid,name,class,normal_score,middle_score,end_score from score";
		return (List<score>) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				List<score> list = new ArrayList<score>();
				score s = null;
				while(rs.next()) {
					s= new score();
					s.setId(rs.getInt(1));
					s.setStuid(rs.getInt(2));
					s.setName(rs.getString(3));
					s.setClassid(rs.getString(4));
					s.setNormal_score(rs.getInt(5));
					s.setMiddle_score(rs.getInt(6));
					s.setEnd_score(rs.getInt(7));
					list.add(s);
				}
				return list;
			}
		});
	}

}
