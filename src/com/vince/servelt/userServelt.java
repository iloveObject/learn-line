package com.vince.servelt;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vince.dao.userDAO;
import com.vince.dao.userDAOImpl;
import com.vince.entity.user;

/**
 * Servlet implementation class CourseServelt
 */
@WebServlet("/userServelt")
public class userServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	userDAO dao = new userDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServelt() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String method = request.getParameter("method");
		if("findAll".equals(method)) {
			try {
				List<user> list = dao.findAll();
				System.out.println(list);
				request.setAttribute("list",list);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		String role = request.getParameter("role");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		if("findAll".equals(method)) {
			try {
				List<user> list = dao.findAll();
				int flag = 0;
				for(int i = 0 ; i < list.size() ; i++) {
					if(list.get(i).getUser().equals(user) & list.get(i).getPassword().equals(password) & list.get(i).getRole() == Integer.parseInt(role)) {
			            //创建session对象
			            HttpSession session = request.getSession();
			            //把用户数据保存在session域对象中
			            session.setAttribute("user", user);
			            session.setAttribute("password", password);
			            session.setAttribute("role", role);
						request.setAttribute("role",role);
						request.getRequestDispatcher("index.jsp").forward(request, response);
						return;
					}else {
						flag = 1;
					}
				}
				if(flag == 1) {
					response.sendRedirect("error.jsp");
					return;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}	

}