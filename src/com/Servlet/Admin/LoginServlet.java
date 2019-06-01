package com.Servlet.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		
		GuanLiDao gDao = new 	GuanLiDaoimpl();
		String glname = request.getParameter("glname");
		String glpwd= request.getParameter("glpwd");
		GuanLi user = gDao.Login(glname, glpwd);
		if (user != null && user.getGlpwd().equals(glpwd)) { //��¼�ɹ�
			request.getRequestDispatcher("HouTai/Frame.jsp").forward(request, response);
		
			return;
		}
		//��¼ʧ��
		response.sendRedirect("/HuaWeiS/HouTai/Login1.jsp");
	}

	
		
	
	






	private void alert(Object println) {
		// TODO Auto-generated method stub
		
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

		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		
		
		GuanLiDao gl = new 	GuanLiDaoimpl();
		String glname = request.getParameter("glname");
		String glpwd= request.getParameter("glpwd");
		GuanLi user = gl.Login(glname, glpwd);
		
		if (user != null && user.getGlpwd().equals(glpwd)) { //��¼�ɹ�
System.out.println("��¼�ɹ�");
			request.getRequestDispatcher("/HouTai/Frame.jsp").forward(request, response);
		
			return;
		}
		//��¼ʧ��
		System.out.println("��¼ʧ��,��ע��");
		response.sendRedirect("/HuaWeiS/HouTai/Login1.jsp");
	}
	
	
	}


