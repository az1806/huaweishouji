<%@ page language="java" import="java.util.*,com.entitly.*;" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <jsp:include page="header.jsp"></jsp:include>
    <header class="article_list_more_header">
     <div> <a>首页</a>&#62;<a>新闻资讯</a>&#62;<a>更多</a></div>
    </header>

    <section class="article-content">
       <%    List<article_list_more>  nr= (List<article_list_more>) request.getAttribute("art");%>
     <%    for (int i=0;i< nr.size();i++) {
                     %>
            <li>
                <div class="article-date">
                    <strong><%= nr.get(i).getZxid() %></strong>
                    <p><%= nr.get(i).getZxtime() %></p>
                </div>
                
                <div class="article-info">
                    <a href="article_list_content.html">
                        <h3><%= nr.get(i).getZxname() %></h3>
                        <p><%= nr.get(i).getZxneirong() %></p>
                    </a>
                    
                </div>
            </li>
             <% } %>

    </section>
    <div class="article_list_more_pages">
        <ul>
            <li><a>上一页</a></li>
            <li class="article-current"><a>1</a></li>
            <li><a>2</a></li>
            <li><a>3</a></li>
            <li><a>下一页</a></li>
        </ul>
    </div>
</div>
﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
