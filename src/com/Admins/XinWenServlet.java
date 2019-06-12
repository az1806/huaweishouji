package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.XinWenDao;
import com.dao.XinWenLDao;
import com.daolmpl.XinWenDaoImpl;
import com.daolmpl.XinWenLDaoImpl;
import com.entitly.ShangPinLei;
import com.entitly.XinWen;
import com.entitly.XinWenL;

public class XinWenServlet extends BaseServlet {

	XinWenLDao xxx=new XinWenLDaoImpl();
	XinWenDao www=new XinWenDaoImpl();
	public void allXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 List<XinWenL> xx= xxx.allXinWenL();
	
		 String   name= 	request.getParameter("name");
		 
		 String neirong=request.getParameter("neirong");
		 String time=request.getParameter("time");
		 
		 String lidws=request.getParameter("lid");
		 int lid=0;
			if(lidws !=null && !lidws.equals("")){
				lid=Integer.parseInt(request.getParameter("lid"));
			}	 

			 
		List<XinWen> S=www.allXinWens(name, neirong, time, lid);
if(S!=null){
			System.out.println(S);
			List<XinWen> ww= S;
			 request.setAttribute("ww", ww);
}
         request.setAttribute("xx", xx);
		 request.getRequestDispatcher("/Admin/XinWen.jsp").forward(request, response);
	
	}

	
	public void addXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		String zxname=request.getParameter("zxname");
		String zxneirong=request.getParameter("zxneirong");
		String zxtime=request.getParameter("zxtime");
		int xwid=Integer.parseInt(request.getParameter("xwid"));
		int n=www.addXinWen(zxname, zxneirong, zxtime, xwid);
		if(n>0){
			List<XinWen> ww= www.allXinWen();
			 request.setAttribute("ww", ww);
			 request.getRequestDispatcher("/Admin/XinWen.jsp").forward(request, response);	
		}
	}
	
	public void deleteXinWen(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		int n=www.deleteXinWen(id);
		if(n>0){
			List<XinWen> ww= www.allXinWen();
			 request.setAttribute("ww", ww);
			 request.getRequestDispatcher("/Admin/XinWen.jsp").forward(request, response);	
		}
		
	}

	
	
	public void getXWid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		XinWen XW =www.getXWid(id);
			 request.setAttribute("XW", XW);
			 request.getRequestDispatcher("XinWen-edit.jsp").forward(request, response);	
	
		
	}
	
	public void updateXWid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
	
		PrintWriter out = response.getWriter();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String neirong=request.getParameter("neirong");
		String time=request.getParameter("time");
		int lid=Integer.parseInt(request.getParameter("lid"));
		int n=www.updateXWid(id, name,neirong,time,lid);
		if(n>0){
			out.println("<script>window.parent.location.reload();</script>");
		}
		
		
	}
	
}
