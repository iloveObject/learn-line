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

import com.vince.dao.messageDAO;
import com.vince.dao.messageDAOImpl;
import com.vince.entity.message;

/**
 * Servlet implementation class CourseServelt
 */
@WebServlet("/messageServelt")
public class messageServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	messageDAO dao = new messageDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public messageServelt() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("findAll".equals(method)) {
			try {
				List<message> list = dao.findAll();
				request.setAttribute("list",list);
				request.getRequestDispatcher("message.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");	
		System.out.println(action);
			if(action.equals("add")) {
				String name = request.getParameter("name");
				String mail = request.getParameter("mail");
				String content = request.getParameter("content");
				message m = new message(name,mail,content);			
				try {
					dao.add(m);
				} catch (SQLException e) {
				e.printStackTrace();
				}
				response.sendRedirect("messageServelt?method=findAll");
			}
				
		
	}	

}