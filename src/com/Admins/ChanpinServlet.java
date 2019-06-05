package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ShangPInLeiDao;
import com.dao.ShangPinDao;
import com.daolmpl.ShangPInLeiDaoimpl;
import com.daolmpl.ShangPinDaoimpl;
import com.entitly.ShangPin;
import com.entitly.ShangPinLei;
import com.util.Result;

public class ChanpinServlet extends BaseServlet {
	ShangPinDao ptd = new ShangPinDaoimpl();

	
	 ShangPInLeiDao pw = new ShangPInLeiDaoimpl();
	public void Come(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		ShangPinDao ptd = new ShangPinDaoimpl();
		List<ShangPin> pts= ptd.queryShangPins();
		request.setAttribute("spname", pts);

		request.getRequestDispatcher("/Admin/Splb.jsp").forward(request, response);
		
	}
	public void Comes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		 int n=Integer.parseInt(request.getParameter("n"));
		 ShangPInLeiDao pw = new ShangPInLeiDaoimpl();
	
		     ptd =  new ShangPinDaoimpl();
			List<ShangPinLei> pa= pw.queryShangPinLeisa();
			request.setAttribute("saname", pa);
			request.getRequestDispatcher("/Admin/GoodsAddsX.jsp").forward(request, response);
		
	}
		public void Add(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
			 PrintWriter out = response.getWriter();
			 ShangPinDao spname = new ShangPinDaoimpl();
			 String sp=request.getParameter("spname");
			 int s=spname.insertShangPin(sp);
			 if(s>0){
				 String sps=Result.toClient(true,"添加成功");
				 out.println(sps);	
			 }else{
				 String sps=Result.toClient(true,"添加失败");
				 out.println(sps);	
			 }
		}
					
			
		

		
		public void Delete(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
		
			
			 int splbid=Integer.parseInt(request.getParameter("splbid"));
	
			 int v=ptd.Shanchu(splbid);
			 if(v>0){
				
					List<ShangPin> pts= ptd.queryShangPins();
					request.setAttribute("spname", pts);

					request.getRequestDispatcher("/Admin/Splb.jsp").forward(request, response);	
			 }
			 else{
				System.out.print("删除失败");
				
					
			 }
			 }
		public void Adds(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 
			
		
			 String Spname=request.getParameter("spname");
			 String color=request.getParameter("color");
			 String spxh=request.getParameter("spxh");
			 String spcc=request.getParameter("spcc");
			    int xid=Integer.parseInt(request.getParameter("xid"));
			 int s=pw.insertShangPins(Spname, color, spxh, spcc, xid);
			 if(s>0){ System.out.println("成功");
				 List<ShangPinLei> pa= pw.queryShangPinLeisa();
					request.setAttribute("saname", pa);
					request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
			 }else{
				 System.out.println("不成功");
				 
			 }
			
			
		}
		public void ShanChu(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			 int sid=Integer.parseInt(request.getParameter("sid"));
			 int v=pw.Shanchu(sid);
			 if(v>0){
				 System.out.println("删除成功");
				 List<ShangPinLei> pa= pw.queryShangPinLeisa();
					request.setAttribute("saname", pa);
					request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
			 }else{
				System.out.println("删除失败");
			 }
		}
			
		public void XiuGai(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			 response.setCharacterEncoding("utf-8");
			
		
			int sid=Integer.parseInt(request.getParameter("sid"));
			 String Spname=request.getParameter("spname");
			 String color=request.getParameter("color");
			 String spxh=request.getParameter("spxh");
			 String spcc=request.getParameter("spcc");
			    int xid=Integer.parseInt(request.getParameter("xid"));
			 int s=pw.XiuGai(sid,Spname, color, spxh, spcc, xid);
			 if(s>0){
				 System.out.println("修改成功");
				 List<ShangPinLei> pa= pw.queryShangPinLeisa();
					request.setAttribute("saname", pa);
					request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
			 }else{
				 System.out.println("修改失败");
				 
			 }
		}
		}
		
		
		