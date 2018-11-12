package com.vince.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vince.base.ResultSetHandler;
import com.vince.dao.studentDAO;
import com.vince.entity.student;
import com.util.db.JdbcTemplete;
/**
 * studentDAO的具体实现
 * @author Administrator
 *
 */
public class studentDAOImpl implements studentDAO{
	private JdbcTemplete JdbcTemplete;
	public studentDAOImpl() {
		JdbcTemplete = new JdbcTemplete();
	}
	//添加学生
	public void add(student s) throws SQLException {
		String sql = "insert into student(stuid,class,name,mail,phone,remarks)values(?,?,?,?,?,?)";
		JdbcTemplete.update(sql,s.getStuid(),s.getClassid(),s.getName(),s.getMail(),s.getPhone(),s.getRemarks());
	}
	//修改学生
		public void update(student s) throws SQLException {
			String sql = "update student set class=?,name=?,mail=?,phone=?,remarks=? where stuid = ?";
			JdbcTemplete.update(sql,s.getClassid(),s.getName(),s.getMail(),s.getPhone(),s.getRemarks(),s.getStuid());
		}
		//删除学生
		public void delete(String stuid) throws SQLException {
			String sql = "delete from student where stuid = ?";
			JdbcTemplete.update(sql,stuid);
		}
	//查找学生
	public student findById(String stuid) throws SQLException {
		String sql = "select id,stuid,class,name,mail,phone,remarks from student where stuid = ?";
		return (student) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				student s = null;
				if(rs.next()) {
					s= new student();
					s.setId(rs.getInt(1));
					s.setStuid(rs.getInt(2));
					s.setClassid(rs.getString(3));
					s.setName(rs.getString(4));
					s.setMail(rs.getString(5));
					s.setPhone(rs.getInt(6));
					s.setRemarks(rs.getString(7));
					
				}
				return s;
			}
		},stuid);
	}

	@SuppressWarnings("unchecked")
	public List<student> findAll() throws SQLException {
		String sql = "select id,stuid,class,name,mail,phone,remarks from student";
		return (List<student>) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				List<student> list = new ArrayList<student>();
				student s = null;
				while(rs.next()) {
					s= new student();
					s.setId(rs.getInt(1));
					s.setStuid(rs.getInt(2));
					s.setClassid(rs.getString(3));
					s.setName(rs.getString(4));
					s.setMail(rs.getString(5));
					s.setPhone(rs.getInt(6));
					s.setRemarks(rs.getString(7));
					list.add(s);
				}
				return list;
			}
		});
	}

}
