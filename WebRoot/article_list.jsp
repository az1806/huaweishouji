<%@ page language="java" import="java.util.*,com.entitly.*;" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <jsp:include page="header.jsp"></jsp:include>
    <header class="header-article-list">
        <div class="article-position">新闻资讯</div>
        <ul>
      <%    List<article_list> xw = ( List<article_list>) request.getAttribute("article");
                
                   for (int i=0;i<xw.size();i++) {
                     %>
                     <li><a href="/HuaWeiS/article?m=<%=xw.get(i).getXwid() %>"><%=xw.get(i).getXwname() %></a></li>
                     <%
                   }
                   %></ul>
        <div class="article-more-btn">
            <a href="article_list_more.html">MORE &#62; &#62;</a>
        </div>
    </header>
<div>
    <section class="article-content">
<ul>
 <%    List<article_list_more> qq=   ( List<article_list_more>) request.getAttribute("at");
                
                   for (int i=0;i<qq.size();i++) {
                     %>
                     <li>
                <div class="article-date">
                    <strong><%=qq.get(i).getZxid() %></strong>
                    <p><%=qq.get(i).getZxtime() %></p>
                </div>
                <div class="article-info">
                    <a href="/HuaWeiS/content?m=<%=qq.get(i).getXwid() %>">
                        <h3><%=qq.get(i).getZxname() %></h3>
                        <p><%=qq.get(i).getZxneirong() %></p>
                    </a>
                </div>
            </li>
                   <%}
                   %></ul>
          
    </section>
</div>
﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
