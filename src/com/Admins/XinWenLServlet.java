package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;

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
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 List<XinWenL> xx= xxx.allXinWenL();
		 request.setAttribute("xx", xx);
		 request.getRequestDispatcher("/Admin/XinWenL.jsp").forward(request, response);
	}

	public void addXinWenL(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		
		String xwname =request.getParameter("xwname");
		int n= xxx.addXinWenL(xwname);
		 if(n>0){
			 List<XinWenL> xx= xxx.allXinWenL();
			 request.setAttribute("xx", xx);
			 request.getRequestDispatcher("/Admin/XinWenL.jsp").forward(request, response);
		 }
	}
	public void deleteXinWenL(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int id =Integer.parseInt(request.getParameter("id"));
		int n= xxx.deleteXinWenL(id);
		if(n>0){
			List<XinWenL> xx= xxx.allXinWenL();
			 request.setAttribute("xx", xx);
			 request.getRequestDispatcher("/Admin/XinWenL.jsp").forward(request, response);
		}
	}
	
	public void  getXWLid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
				int id =Integer.parseInt(request.getParameter("id"));
				XinWenL XWL= xxx.getXWLid(id);
				 request.setAttribute("XWL", XWL);
				 request.getRequestDispatcher("/Admin/XinWenL-edit.jsp").forward(request, response);	
			}

	public void  updateXWL(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			int id =Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("name");
			int n=xxx.updateXWL(id, name);
			if(n>0){
			
				out.println("<script>window.parent.location.reload();</script>");
		}
		}
}

