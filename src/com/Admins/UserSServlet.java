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
		
		List<UserHouTai> us= ptd.queryUsersa();
		request.setAttribute("ygname", us);
  
		request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
	}
	
	public void ShowUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
			int ygid=Integer.parseInt(request.getParameter("ygid"));
		 UserHouTai use =ptd.Users(ygid);
		 request.setAttribute("yname", use);
		 request.getRequestDispatcher("/Admin/UserX.jsp").forward(request, response); 
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
		 List<UserHouTai> us= ptd.queryUsersa();
			request.setAttribute("ygname", us);
	  
			request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
		 }else{
			 System.out.println("不成功");
			 
		 }

	}

	
	public void ShanUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int ygid=Integer.parseInt(request.getParameter("ygid"));
		int e=ptd.Shan(ygid);
		 if(e>0){
			 System.out.print("删除");
			 List<UserHouTai> us= ptd.queryUsersa();
				request.setAttribute("ygname", us);
		  
				request.getRequestDispatcher("/Admin/User.jsp").forward(request, response);
		 }
		 else{
			System.out.print("删除失败");
			
				
		 }
		 }
	public void USXiu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			 int ygid=Integer.parseInt(request.getParameter("ygid"));
			 String ygname=request.getParameter("ygname");
			 String ygsex=request.getParameter("ygsex");
			 String ygphone=request.getParameter("ygphone");
			 String ygphoto=request.getParameter("ygphoto"); 
			
			 int s=ptd.XiuUser(ygid, ygname, ygphone, ygsex, ygphoto);
			 if(s>0){
				 
				 System.out.println("修改成功");
					
					out.println("<script>window.parent.location.reload();</script>");
				
			 }
			
			 
	else{
				 System.out.println("修改失败");
				 
			 }
	}
}
