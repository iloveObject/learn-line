package com.vince.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vince.base.ResultSetHandler;
import com.vince.dao.userDAO;
import com.vince.entity.user;
import com.util.db.JdbcTemplete;
/**
 * messageDAO的具体实现
 * @author Administrator
 *
 */
public class userDAOImpl implements userDAO{
	private JdbcTemplete JdbcTemplete;
	public userDAOImpl() {
		JdbcTemplete = new JdbcTemplete();
	}
	//添加留言
	public void add(user u) throws SQLException {
		String sql = "insert into user(user,password,role)values(?,?,?)";
		JdbcTemplete.update(sql,u.getUser(),u.getPassword(),u.getRole());
	}
	//修改留言
	public void update(user u) throws SQLException {
		String sql = "update user set user=?,password=?,role=? where user = ?";
		JdbcTemplete.update(sql,u.getUser());
	}
	//删除留言
	public void delete(String user) throws SQLException {
		String sql = "delete from user where user = ?";
		JdbcTemplete.update(sql,user);
	}


	@SuppressWarnings("unchecked")
	public List<user> findAll() throws SQLException {
		String sql = "select id,user,password,role from user";
		return (List<user>) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				List<user> list = new ArrayList<user>();
				user u = null;
				while(rs.next()) {
					u= new user();
					u.setId(rs.getInt(1));
					u.setUser(rs.getString(2));
					u.setPassword(rs.getString(3));
					u.setRole(rs.getInt(4));					
 					list.add(u);
				}
				return list;
			}
		});
	}

}
