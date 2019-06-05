package com.Admins;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.XinWenLDao;
import com.daolmpl.XinWenLDaoImpl;
import com.entitly.XinWenL;


public class XinWenLServlet extends BaseServlet {

	XinWenLDao xxx=new XinWenLDaoImpl();
	public void allXinWenL(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 List<XinWenL> xx= xxx.allXinWenL();
		 request.setAttribute("xx", xx);
		 request.getRequestDispatcher("XinWenL.jsp").forward(request, response);
	}

	public void addXinWenL(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String xwname =request.getParameter("xwname");
		int n= xxx.addXinWenL(xwname);
		 if(n>0){
			 List<XinWenL> xx= xxx.allXinWenL();
			 request.setAttribute("xx", xx);
			 request.getRequestDispatcher("XinWenL.jsp").forward(request, response);
		 }
	}
	public void deleteXinWenL(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		int id =Integer.parseInt(request.getParameter("id"));
		int n= xxx.deleteXinWenL(id);
		if(n>0){
			List<XinWenL> xx= xxx.allXinWenL();
			 request.setAttribute("xx", xx);
			 request.getRequestDispatcher("XinWenL.jsp").forward(request, response);
		}
	}
}

