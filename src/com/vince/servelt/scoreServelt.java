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


import com.vince.dao.scoreDAO;
import com.vince.dao.scoreDAOImpl;
import com.vince.entity.score;

/**
 * Servlet implementation class studentServelt
 */
@WebServlet("/scoreServelt")
public class scoreServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	scoreDAO dao = new scoreDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scoreServelt() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("findAll".equals(method)) {
			try {
				List<score> list = dao.findAll();
				System.out.println(list);
				request.setAttribute("list",list);
				request.getRequestDispatcher("score.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if("delete".equals(method)) {
			String stuid = request.getParameter("stuid");
			try {
				dao.delete(stuid);
				response.sendRedirect("scoreServelt?method=findAll");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if("find".equals(method)) {
			String stuid = request.getParameter("stuid");
			System.out.println(stuid);
			try {
				score sc = dao.findById(stuid);
				List<score> list = new ArrayList<score>();
				System.out.println(list);
				list.add(sc);
				request.setAttribute("list",list);
				request.getRequestDispatcher("scoreEdit.jsp").forward(request, response);
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
				String stuid = request.getParameter("stuid");
				String name = request.getParameter("name");
				String classid = request.getParameter("classid");
				String normal_score = request.getParameter("normal_score");
				String middle_score = request.getParameter("middle_score");
				String end_score = request.getParameter("end_score");
				score sc = new score(Integer.parseInt(stuid),name,classid,Integer.parseInt(normal_score),Integer.parseInt(middle_score),Integer.parseInt(end_score));			
				try {
					dao.add(sc);
					response.sendRedirect("scoreServelt?method=findAll");
				} catch (SQLException e) {
				e.printStackTrace();
				}
			}else if("findByid".equals(action)) {
				String stuid = request.getParameter("stuid");
				try {
					score c = dao.findById(stuid);
					List<score> list = new ArrayList<score>();
					list.add(c);
					request.setAttribute("list",list);
					request.getRequestDispatcher("score.jsp").forward(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}else if("update".equals(action)) {
				String stuid = request.getParameter("stuid");
				String name = request.getParameter("name");
				String classid = request.getParameter("classid");
				String normal_score = request.getParameter("normal_score");
				String middle_score = request.getParameter("middle_score");
				String end_score = request.getParameter("end_score");
				score sc = new score(Integer.parseInt(stuid),name,classid,Integer.parseInt(normal_score),Integer.parseInt(middle_score),Integer.parseInt(end_score));			
				try {
					dao.update(sc);
					response.sendRedirect("scoreServelt?method=findAll");
				} catch (SQLException e) {
				e.printStackTrace();
				}
			}
				
		
	}	

}


