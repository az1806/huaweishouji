package com.Servlet.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.tag.common.sql.ResultImpl;

import com.dao.GuanLiDao;
import com.dao.ShangPinDao;
import com.daolmpl.GuanLiDaoimpl;
import com.daolmpl.ShangPinDaoimpl;
import com.entitly.ShangPin;
import com.util.Result;

public class CopyOfSpLbServlet extends  HttpServlet {

	

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	;
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		ShangPinDao ptd = new ShangPinDaoimpl();
		List<ShangPin> pts= ptd.queryShangPins();
		request.setAttribute("spname", pts);

		request.getRequestDispatcher("/HouTai/Splb.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
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
			ShangPinDao ptd = new ShangPinDaoimpl();
			List<ShangPin> pts= ptd.queryShangPins();
			request.setAttribute("spname", pts);

			request.getRequestDispatcher("/HouTai/Splb.jsp").forward(request, response);
				
			
	}

	
	

}
