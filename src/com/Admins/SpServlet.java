package com.Admins;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ShangPInLeiDao;

import com.daolmpl.ShangPInLeiDaoimpl;
import com.daolmpl.ShangPinDaoimpl;

import com.entitly.ShangPinLei;
import com.util.Result;

public class SpServlet extends HttpServlet {

	

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 ShangPInLeiDao pw = new ShangPInLeiDaoimpl();
			List<ShangPinLei> pa= pw.queryShangPinLeisa();
			request.setAttribute("saname", pa);
			request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 
		 PrintWriter out = response.getWriter();
		 ShangPInLeiDao spsv = new ShangPInLeiDaoimpl();
		 String Spname=request.getParameter("spname");
		 String color=request.getParameter("color");
		 String spxh=request.getParameter("spxh");
		 String spcc=request.getParameter("spcc");
		    int xid=Integer.parseInt(request.getParameter("xid"));
		 int s=spsv.insertShangPins(Spname, color, spxh, spcc, xid);
		 if(s>0){
			 String sps=Result.toClient(true,"添加成功");
			 out.println(sps);
		 }else{
			 String sps=Result.toClient(true,"添加失败");
			 out.println(sps);
		 }
		 ShangPInLeiDao pw = new ShangPInLeiDaoimpl();
		 List<ShangPinLei> pa= pw.queryShangPinLeisa();
			request.setAttribute("saname", pa);
			request.getRequestDispatcher("/Admin/SpGl.jsp").forward(request, response);
	}

}
