package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.XinWenDao;
import com.daolmpl.XinWenDaoImpl;
import com.entitly.XinWen;
import com.entitly.XinWenL;

public class XinWenServlet extends BaseServlet {

	
	XinWenDao www=new XinWenDaoImpl();
	public void allXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<XinWen> ww= www.allXinWen();
		 request.setAttribute("ww", ww);
		 request.getRequestDispatcher("XinWen.jsp").forward(request, response);
	
	}

	
	public void addXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String zxname=request.getParameter("zxname");
		String zxneirong=request.getParameter("zxneirong");
		String zxtime=request.getParameter("zxtime");
		int xwid=Integer.parseInt(request.getParameter("xwid"));
		int n=www.addXinWen(zxname, zxneirong, zxtime, xwid);
		if(n>0){
			List<XinWen> ww= www.allXinWen();
			 request.setAttribute("ww", ww);
			 request.getRequestDispatcher("XinWen.jsp").forward(request, response);	
		}
	}
	
	public void deleteXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int n=www.deleteXinWen(id);
		if(n>0){
			List<XinWen> ww= www.allXinWen();
			 request.setAttribute("ww", ww);
			 request.getRequestDispatcher("XinWen.jsp").forward(request, response);	
		}
		
	}

}
