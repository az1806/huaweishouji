<%@ page language="java" import="java.util.*,com.entitly.*;" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <jsp:include page="header.jsp"></jsp:include>
   <div>
    <header class="header-article-list">
     <%    List<article_list> xw = ( List<article_list>) request.getAttribute("article");%>
        <div class="article-position">
          <a  href="/HuaWeiS/content">
              <span>上一篇</span>
             
          </a>
        </div>
          <ul>
     
                
                  <% for (int i=0;i<xw.size();i++) {
                     %>
                     <li><a href="/HuaWeiS/content?m=<%=xw.get(i).getXwid() %>"><%=xw.get(i).getXwname() %></a></li>
                     <%
                   }
                   %></ul>
        <div class="article-more-btn">
            <a href="/HuaWeiS/content">
                <span>下一篇</span>
        
            </a>
        </div>
    </header>

    <section class="article-content">
    <%    List<article_list_more> qq=   ( List<article_list_more>) request.getAttribute("at");%>
                
                  <%  for (int i=0;i<qq.size();i++) {
                     %>
                     <h4><%=qq.get(i).getZxname() %></h4>
             <main>
                     <p><%=qq.get(i).getZxneirong() %></p>
                     </main><%} %>




                
         
    </section>
</div>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
