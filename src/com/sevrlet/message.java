package com.sevrlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.messagedao;

import com.daolmpl.messagedaolmpl;
import com.entitly.messageentitly;



public class message extends HttpServlet {







	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("message.jsp").forward(request, response);
		}
	
		
	 


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		 String lyname =request.getParameter("lyname");
		 String lyhao=request.getParameter("lyhao");
		 String lyeamil=request.getParameter("lyeamil");
		 String lyneirong=request.getParameter("lyneirong");
		 messagedao ud = new messagedaolmpl();
		 ud.insertmeg(lyname, lyhao, lyeamil, lyneirong);
		 System.out.println("haha");
		 request.getRequestDispatcher("message.jsp").forward(request, response);


}
	}
	
