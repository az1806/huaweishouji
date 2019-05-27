<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <jsp:include page="header.jsp"></jsp:include>

 
                  
<section class="pro-list">
    <aside class="pro-leftsidebar">
        <ul>
            <li>
                <a>产品搜索</a>
                <ul id="pro-search">
<li><form action="/HuaWeiS/ChaXun" method="get"><a><input type="text"  class="pro-search"  name="sr"  ><a class="pro-search-btn" ><input type="submit" value="搜索"  />   </a></a></form></li>
                </ul>
            </li>
            <li>
                <a>产品分类</a>
                <ul id="pro-category">
                   <% List<ShangPin> pts=(List<ShangPin>) request.getAttribute("spname");%>
                 <% for (int i=0;i<pts.size();i++) {  %> <li class="on"><a
					href="/HuaWeiS/ShangPin?n=<%=pts.get(i).getXid()%>"> <%=pts.get(i).getName() %>
						<%} %> 
						</a>
				</li>
                  
                </ul>
            </li>
        </ul>
    </aside>

    <aside class="pro-rightsidebar">
    
        <header>

                    <p></p>
            <span>产品展示</span>
        </header>
            <%   List<ShangPinLei> pns=(List<ShangPinLei>) request.getAttribute("same");%>
        <ul> 
     
          
            
           <%  for (int i=0;i<pns.size();i++) {  %><li > <a href="/HuaWeiS/CanShuo?n=<%=pns.get(i).getXid()%>">
                    <div class="img-box">
                        <img src="<%=pns.get(i).getSrc() %>">
                        <p><%= pns.get(i).getSname()%></p>
                    </div>
                </a></li>
						<%} %> 
						
                
        </ul>
		
        <div class="pro_list_more_pages">
            <ul>
                     <li><a  href="/HuaWeiS/ShangPin">上一页</a></li>
             <%  for (int i=0;i<pts.size();i++) {  %>
               <li class="pro-list-current">  <a href="/HuaWeiS/ShangPin?n=<%=pts.get(i).getXid()%>"><%= pts.get(i).getXid()%>
               </a></li>
                <%  }%>
                <li><a  href="/HuaWeiS/ShangPin">下一页</a></li>
            </ul>
        </div>
		
    </aside>


</section>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>