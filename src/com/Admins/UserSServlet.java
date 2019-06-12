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
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.util.Result;

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
		 
		 if(s>0){ System.out.println("�ɹ�");
		 List<UserHouTai> us= ptd.queryUsersa();
			request.setAttribute("ygname", us);
	  
			request.getRequestDispatcher("/Admin/User.jsp").forward(request, response); 
		 }else{
			 System.out.println("���ɹ�");
			 
		 }

	}

	
	public void ShanUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		int ygid=Integer.parseInt(request.getParameter("ygid"));
		int e=ptd.Shan(ygid);
		 if(e>0){
			 System.out.print("ɾ��");
			 List<UserHouTai> us= ptd.queryUsersa();
				request.setAttribute("ygname", us);
		  
				request.getRequestDispatcher("/Admin/User.jsp").forward(request, response);
		 }
		 else{
			System.out.print("ɾ��ʧ��");
			
				
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
				 
				 System.out.println("�޸ĳɹ�");
					
					out.println("<script>window.parent.location.reload();</script>");
				
			 }
			
			 
	else{
				 System.out.println("�޸�ʧ��");
				 
			 }
	}
	public void saveImg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		SmartUpload smart=new SmartUpload();
		smart.setCharset("UTF-8");
		smart.initialize(getServletConfig(), request, response);
		try {
			smart.upload();
			smart.save("/images");
			String fileName=smart.getFiles().getFile(0).getFileName();;
			out.println(Result.toClient(true, fileName));
		} catch (SmartUploadException e) {
			out.println(Result.toClient(false, "�ϴ�ʧ��"));
			e.printStackTrace();
		}
		
	}
}
