<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 List<ShangPin> pts=(List<ShangPin>) request.getAttribute("spname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		  <link rel="stylesheet" href="Admin/css/admin.css" />
		  
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script></head>

	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品类管理</strong> 
        </div>
      </div>

      <hr>
<div class="but">
<a href="/HuaWeiS/Admin/Chanpin.jsp"><input type="submit"  class="layui-btn"  value="添加">
						</a></div>
      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
     
      
   <% for ( int s=0;s<pts.size();s++){ %> <li>    
       
           <img class="am-img-thumbnail am-img-bdrs" src="<%=pts.get(s).getSrc() %>" alt="">
            <div class="gallery-title"><%=pts.get(s).getXid() %></div>
            <div class="gallery-title"><%=pts.get(s).getName() %></div>
          <div class="gallery-title">  
       <a href="/HuaWeiS/Admin/Chanpin?method=Delete&splbid=<%=pts.get(s).getXid() %>">  <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 删除</button>
					</div></a>
        
        </li>
        <% }%>

      </ul>

    
    </div>
	</body>
</html>
