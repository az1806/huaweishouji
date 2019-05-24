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
                     <li><a href="article_list.html"><%=xw.get(i).getXwname() %></a></li>
                     <%
                   }
                   %></ul>
        <div class="article-more-btn">
            <a href="article_list_more.html">MORE &#62; &#62;</a>
        </div>
    </header>

    <section class="article-content">

    </section>
</div>
﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
