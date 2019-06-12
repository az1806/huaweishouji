package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.LiuYanDao;
import com.daolmpl.LiuYanDaoImpl;
import com.entitly.LiuYan;


public class LiuYanServlet extends BaseServlet {

	LiuYanDao liuyan=new LiuYanDaoImpl();
	public void allLiuYan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
			List<LiuYan> ly=liuyan.allLiuYan();
			request.setAttribute("ly", ly);
			 request.getRequestDispatcher("LiuYan.jsp").forward(request, response);
	}

	
	public void deleteLY(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		int n=liuyan.deleteLY(id);
		if(n<0){
			List<LiuYan> ly=liuyan.allLiuYan();
			request.setAttribute("ly", ly);
			 request.getRequestDispatcher("LiuYan.jsp").forward(request, response);
		}
	}

	public void getLiuYanid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
				int id =Integer.parseInt(request.getParameter("id"));
				LiuYan LY= liuyan.getLiuYanid(id);
				 request.setAttribute("LY", LY);
				 request.getRequestDispatcher("LiuYan-edit.jsp").forward(request, response);	
			}

	public void  updateLiuYan(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			int id =Integer.parseInt(request.getParameter("id"));
			String zhuangtai=request.getParameter("zhuangtai");
			int n=liuyan.updateLiuYan(id, zhuangtai);
			if(n>0){
				System.out.println("ÐÞ¸Ä³É¹¦");
				
				out.println("<script>window.parent.location.reload();</script>");
		}
		}
}
