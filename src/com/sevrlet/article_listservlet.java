package com.sevrlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.article_list_contentdao;
import com.dao.article_listdao;
import com.daolmpl.article_list_contentdaolmpl;
import com.daolmpl.article_listdaolmpl;
import com.entitly.article_list;
import com.entitly.article_list_content;

public class article_listservlet extends HttpServlet {




	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		article_listdao zx = new article_listdaolmpl();
		List<article_list> xw= zx.queryarticle_lists();
		
		
		
		request.setAttribute("article",xw);

		request.getRequestDispatcher("/article_list.jsp").forward(request, response);
	}
	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
