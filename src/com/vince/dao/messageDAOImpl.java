package com.vince.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vince.base.ResultSetHandler;
import com.vince.dao.messageDAO;
import com.vince.entity.message;
import com.util.db.JdbcTemplete;
/**
 * messageDAO的具体实现
 * @author Administrator
 *
 */
public class messageDAOImpl implements messageDAO{
	private JdbcTemplete JdbcTemplete;
	public messageDAOImpl() {
		JdbcTemplete = new JdbcTemplete();
	}
	//添加留言
	public void add(message m) throws SQLException {
		String sql = "insert into message(name,mail,content)values(?,?,?)";
		JdbcTemplete.update(sql,m.getName(),m.getMail(),m.getContent());
	}
	//修改留言
	public void update(message m) throws SQLException {
		String sql = "update message set name=?,mail=?,content=? where name = ?";
		JdbcTemplete.update(sql,m.getName());
	}
	//删除留言
	public void delete(String name) throws SQLException {
		String sql = "delete from Course where name = ?";
		JdbcTemplete.update(sql,name);
	}


	@SuppressWarnings("unchecked")
	public List<message> findAll() throws SQLException {
		String sql = "select name,mail,content from message";
		return (List<message>) JdbcTemplete.query(sql,new ResultSetHandler() {
			public Object doHandler(ResultSet rs)throws SQLException {
				List<message> list = new ArrayList<message>();
				message m = null;
				while(rs.next()) {
					m= new message();
					
					m.setName(rs.getString(1));
					m.setMail(rs.getString(2));
					m.setContent(rs.getString(3));
					list.add(m);
				}
				return list;
			}
		});
	}

}
