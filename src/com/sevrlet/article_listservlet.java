package com.sevrlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.article_list_moredao;
import com.dao.article_listdao;

import com.daolmpl.article_list_moredaoimpl;
import com.daolmpl.article_listdaolmpl;
import com.entitly.article_list;
import com.entitly.article_list_content;
import com.entitly.article_list_more;

public class article_listservlet extends HttpServlet {




	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		article_listdao zx = new article_listdaolmpl();
		List<article_list> xw= zx.queryarticle_lists();
		
		int m;
		if(request.getParameter("m")==null){
			m=xw.get(0).getXwid();
		}else{
			m = Integer.parseInt(request.getParameter("m"));
		}
		article_list_moredao zxnr = new article_list_moredaoimpl();
		List<article_list_more> qq= zxnr.queryarticle(m);
		request.setAttribute("at",qq);
		
		
	
		
		request.setAttribute("article",xw);

		request.getRequestDispatcher("/article_list.jsp").forward(request, response);
	}
	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
