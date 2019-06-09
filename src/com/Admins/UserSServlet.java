package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserHouTaiDao;
import com.daolmpl.UserHouTaiDaoimpl;

import com.entitly.UserHouTai;

public class UserSServlet extends BaseServlet {
	UserHouTaiDao ptd = new UserHouTaiDaoimpl();
	
	
	public void User(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		
		List<UserHouTai> us= ptd.queryUsers();
		request.setAttribute("ygname", us);
  
		request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
	}

	
	 
	public void Adds(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");

		 
		 String ygname=request.getParameter("ygname");
		 String ygphone=request.getParameter("ygphone");
		 String ygsex=request.getParameter("ygsex");
		
		
		 String ygphoto=request.getParameter("ygphoto");
		
		 int s=ptd.TianjiaUser(ygname, ygphone, ygsex, ygphoto);
		 
		 if(s>0){ System.out.println("成功");
		 List<UserHouTai> us= ptd.queryUsers();
			request.setAttribute("ygname", us);
	  
			request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
		 }else{
			 System.out.println("不成功");
			 
		 }

	}

	
	public void ShanChu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 int ygid=Integer.parseInt(request.getParameter("ygid"));

		 int v=ptd.Shanchu(ygid);
		 if(v>0){
			 System.out.print("删除");
			 List<UserHouTai> us= ptd.queryUsers();
				request.setAttribute("ygname", us);
		  
				request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
		 }
		 else{
			System.out.print("删除失败");
			
				
		 }
		 }
	
}
