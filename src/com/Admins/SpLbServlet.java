package com.Admins;

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

public class SpLbServlet extends  HttpServlet {

	

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		ShangPinDao ptd = new ShangPinDaoimpl();
		List<ShangPin> pts= ptd.queryShangPins();
		request.setAttribute("spname", pts);

		request.getRequestDispatcher("/Admin/Splb.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
				
			
	}

	
	

}
