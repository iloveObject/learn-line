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


import com.vince.dao.studentDAO;
import com.vince.dao.studentDAOImpl;
import com.vince.entity.student;

/**
 * Servlet implementation class studentServelt
 */
@WebServlet("/studentServelt")
public class studentServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	studentDAO dao = new studentDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentServelt() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("findAll".equals(method)) {
			try {
				List<student> list = dao.findAll();
				request.setAttribute("list",list);
				request.getRequestDispatcher("course.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if("delete".equals(method)) {
			String stuid = request.getParameter("stuid");
			try {
				dao.delete(stuid);
				response.sendRedirect("studentServelt?method=findAll");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if("find".equals(method)) {
			String stuid = request.getParameter("stuid");
			try {
				student c = dao.findById(stuid);
				List<student> list = new ArrayList<student>();
				list.add(c);
				request.setAttribute("list",list);
				request.getRequestDispatcher("courseEdit.jsp").forward(request, response);
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
			if(action.equals("add")) {
				String stuid = request.getParameter("stuid");
				String classid = request.getParameter("classid");
				String name = request.getParameter("name");
				String mail = request.getParameter("mail");
				String phone = request.getParameter("phone");
				String remarks = request.getParameter("remarks");
				student s = new student(Integer.parseInt(stuid),classid,name,mail,Integer.parseInt(phone),remarks);			
				try {
					dao.add(s);
					request.setAttribute("stuid",stuid);
					request.setAttribute("classid",classid);
					request.setAttribute("name",name);
					request.setAttribute("mail",mail);
					request.setAttribute("phone",phone);
					request.setAttribute("remarks",remarks);
					request.getRequestDispatcher("student-check.jsp").forward(request, response);
				} catch (SQLException e) {
				e.printStackTrace();
				}
				/*response.sendRedirect("studentServelt?method=findAll");*/
				
			}else if("findByid".equals(action)) {
				String stuid = request.getParameter("stuid");
				try {
					student c = dao.findById(stuid);
					List<student> list = new ArrayList<student>();
					list.add(c);
					request.setAttribute("list",list);
					request.getRequestDispatcher("course.jsp").forward(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}else if("update".equals(action)) {
				String stuid = request.getParameter("stuid");
				String classid = request.getParameter("classid");
				String name = request.getParameter("name");
				String mail = request.getParameter("mail");
				String phone = request.getParameter("phone");
				String remarks = request.getParameter("remarks");
				System.out.println(classid);
				student s = new student(Integer.parseInt(stuid),classid,name,mail,Integer.parseInt(phone),remarks);		
				try {
					dao.update(s);
					response.sendRedirect("studentServelt?method=findAll");
				} catch (SQLException e) {
				e.printStackTrace();
				}
			}
				
		
	}	

}


