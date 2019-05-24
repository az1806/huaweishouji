<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<jsp:include page="header.jsp"></jsp:include>

 
                  
<section class="pro-list">
    <aside class="pro-leftsidebar">
        <ul>
            <li>
                <a>产品搜索</a>
                <ul id="pro-search">
                    <li><a><input type="text"  class="pro-search"><a class="pro-search-btn">搜索</a></a></li>
                </ul>
            </li>
            <li>
                <a>产品分类</a>
                <ul id="pro-category">
                   <% List<ShangPin> pts=(List<ShangPin>) request.getAttribute("spname");%>
                 <% for (int i=0;i<pts.size();i++) {  %> <li class="on"><a
					href="/Huawei/ShangPin?n=<%=pts.get(i).getXid()%>"> <%=pts.get(i).getName() %>
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
         
        <ul> 
        <%   List<ShangPinLei> ps=(List<ShangPinLei>) request.getAttribute("svname");
          
            
            for (int i=0;i<ps.size();i++) {  %><li > <a href="/huaweishouji/CanShuo?n=<%=ps.get(i).getXid()%>">
                    <div class="img-box">
                        <img src="<%=ps.get(i).getSrc() %>">
                        <p><%= ps.get(i).getSname()%></p>
                    </div>
                </a></li>
						<%} %> 
						
                
        </ul>
		
        <div class="pro_list_more_pages">
            <ul>
                <li><a>上一页</a></li>
                <li class="pro-list-current"><a>1</a></li>
                <li><a>2</a></li>
                <li><a>3</a></li>
                <li><a>下一页</a></li>
            </ul>
        </div>
		
    </aside>


</section>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>