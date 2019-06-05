<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	List<ShangPinLei> pa=(List<ShangPinLei>)  request.getAttribute("saname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		  <link rel="stylesheet" href="Admin/css/admin.css" />
	</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

      <hr>
<div class="but">
<a href="/HuaWeiS/Admin/GoodsAdds.jsp"><input type="submit"  class="layui-btn"  value="添加"></a>
	</a>
						</div>
      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
      <% for(int v=0;v<pa.size();v++ ){ %>
        <li>
          
             <div class="gallery-title">  <img class="am-img-thumbnail am-img-bdrs" src="<%=pa.get(v).getSrc() %>" alt=""></div>
            <div class="gallery-title"><%=pa.get(v).getSname() %></div>
           <div>  <a href="/HuaWeiS/Admin/Chanpin?method=ShanChu&sid=<%=pa.get(v).getSid() %>">  <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus">删除</span> </button></a></div>
				 <div> <a href="/HuaWeiS/Admin/Chanpin?method=Comes&n=<%=pa.get(v).getSid() %>">  <button type="submit"  class="am-btn am-btn-default"><span class="am-icon-plus">修改</span> </button></a>
						</div>
          
        </li><%} %>
       
      </ul>

    
    </div>
	</body>
</html>
