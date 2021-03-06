package com.sevrlet;

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

public class ChaXunServlet extends HttpServlet {

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
			
			
			String s=request.getParameter("sr");
			ShangPInLeiDao pvo = new ShangPInLeiDaoimpl();
			List<ShangPinLei> pns= pvo.ShangPinLeisa(s);
			
			 ShangPinDao ptd = new ShangPinDaoimpl();
				List<ShangPin> pts= ptd.queryShangPins();
			request.setAttribute("spname", pts);
			request.setAttribute("same", pns);
			
			request.getRequestDispatcher("/ShangPins.jsp").forward(request, response);
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
