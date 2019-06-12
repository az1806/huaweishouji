package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entitly.GuanLi;

public class LFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse) res;
		HttpSession session = request.getSession();
		String path=request.getRequestURI();
		System.out.println(path);
		
		GuanLi guanli=(GuanLi)session.getAttribute("guanli");
		if(guanli!=null){//µÇÂ¼¹ý
			chain.doFilter(request, response);
		}else if(path.equals("/HuaWeiS/Admin/Login.jsp") || path.endsWith(".css")|| path.endsWith(".js")|| path.endsWith(".jpg")|| path.endsWith(".ico")|| path.endsWith(".png")|| path.endsWith(".woff")|| path.endsWith(".ttf")){
			chain.doFilter(request, response);
		}
		else{//Ã»µÇÂ¼¹ý
			response.sendRedirect("/HuaWeiS/Admin/Login.jsp");
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
