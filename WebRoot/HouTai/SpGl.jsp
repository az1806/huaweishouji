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
		 <link rel="stylesheet" href="HouTai/css/amazeui.min.css" />
		  <link rel="stylesheet" href="HouTai/css/admin.css" />
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
<a href="HouTai/GoodsAdds.jsp"><input type="submit"  class="layui-btn"  value="添加"></a>
<a href="HouTai/GoodsAddsX.jsp"><input type="submit"  class="layui-btn"  value="修改">	</a>
						</div>
      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
      <% for(int v=0;v<pa.size();v++ ){ %>
        <li>
          <a href="#">
             <div class="gallery-title">  <img class="am-img-thumbnail am-img-bdrs" src="<%=pa.get(v).getSrc() %>" alt=""></div>
            <div class="gallery-title"><%=pa.get(v).getSname() %></div>
           <div>  <a href=" /HuaWeiS/Sps?sid=<%=pa.get(v).getSid() %>"><input type="submit"  class="layui-btn"  value="删除">
						</a>
					
						</div>
          </a>
        </li><%} %>
       
      </ul>

    
    </div>
	</body>
</html>
