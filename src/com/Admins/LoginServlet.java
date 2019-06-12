package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GuanLiDao;
import com.daolmpl.GuanLiDaoimpl;
import com.entitly.GuanLi;


public class LoginServlet extends HttpServlet {


	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
		
	
	






	




	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		System.out.println("µÇÂ¼");
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		
		GuanLiDao gDao = new 	GuanLiDaoimpl();
		String glname = request.getParameter("glname");
		String glpwd= request.getParameter("glpwd");
		GuanLi guanli = gDao.Login(glname, glpwd);
		if (guanli != null) { //µÇÂ¼³É¹¦
			//request.getRequestDispatcher("/Admin/Frame.jsp").forward(request, response);
			HttpSession session=request.getSession();
			session.setAttribute("guanli", guanli);
			System.out.print("µÇÂ¼");
			response.sendRedirect("/HuaWeiS/Admin/Frame.jsp");
			
		}
		}

	}


