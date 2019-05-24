<%@ page language="java" import="java.util.*,com.entitly.*;" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <jsp:include page="header.jsp"></jsp:include>
    <header class="header-article-list">
        <div class="article-position">
          <a  href="article_list_content.html">
              <span>上一篇</span>
              <span>家具有哪些类型</span>
          </a>
        </div>

        
         
        <div class="about-team-headimg">
        <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
           <ul>
            <% List<User> us=(List<User>) request.getAttribute("username"); 
          
         for (int i=0;i<us.size();i++){   
         %> 
        <li>    <img src="<%=us.get(i).getYgphoto() %>" alt="">
           
            <p><%=us.get(i).getYgname() %>
            
            </p>
                    </li>
         <% 
          }
       %> </ul>
        </div>
    
      
        <div class="about-slogan">
            <div>
            <p></p>
            </div>
        </div>
    </div>
</section>


       <ul>
      <%    List<article_list> xw = ( List<article_list>) request.getAttribute("article");
                
                   for (int i=0;i<xw.size();i++) {
                     %>
                     <li><a href="article_list.html"><%=xw.get(i).getXwname() %></a></li>
                     <%
                   }
                   %></ul>
        <div class="article-more-btn">
       <%    List<article_list_content>  qq= (List<article_list_content>) request.getAttribute("at");%>
           
            
                <span>下一篇</span>
                <span>家具有哪些类型</span>
            </a>
        </div>
    </header>

    <section class="article-content">
    <%    for (int i=0;i< qq.size();i++) {
                     %>
            
                
                    <%= qq.get(i).getZxid() %>
                    <p><%= qq.get(i).getXwid() %>
               
                
               
                        <h4><%= qq.get(i).getZxname() %></h4>
                         <main>
                        <p><%= qq.get(i).getZxneirong() %></p>
                         <main>
             
             <% } %>
           
    </section>
</div>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
