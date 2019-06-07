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
		  <link rel="stylesheet" href="/HuaWeiS/Admin/css/admin.css" />
		  
<link rel="stylesheet" href="layui/css/layui.css" type="text/css"></link>
	<script type="text/javascript" src="layui/layui.js"></script>
	<script type="text/javascript" src="/HuaWeiS/Admin/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	var updateFrame=null;
	function updateBut(e){
	var typeid=e.getAttribute("data-id");
	alert(typeid);
	layui.use('layer',function(){
	var layer=layui.layer;
	updateFrame=layer.open({
	title:"商品信息修改",
	type:2,
	area:['45%','40%'],
	scrollbar:false,
	content:'/HuaWeiS/Admin/Chanpin?method=Comev&splbid='+typeid, 
	
	});
	});
	}
	
	
	</script>
	
	
	</head>

	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品类管理</strong> 
        </div>
      </div>

      <hr>
      <table border="1">
      	<tr><th>商品编号</th><th>商品类别</th><th>功能</th><th>功能</th></tr>
<div class="but">
<a href="/HuaWeiS/Admin/Chanpin.jsp"><input type="submit"  class="layui-btn"  value="添加">
						</a></div>
					
      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">

   <% for ( int s=0;s<pts.size();s++){ %>   
        <form bo>
        <li>  <tr> 
         <td><%=pts.get(s).getXid() %></td>
       <td> <%=pts.get(s).getName() %></td>
       <td><a href="/HuaWeiS/Admin/Chanpin?method=Delete&splbid=<%=pts.get(s).getXid() %>">  <button type="button" class="am-btn am-btn-default" > 删除</button></a></td>
        <td> <button type="button" class="am-btn am-btn-default"  data-id=<%=pts.get(s).getXid() %> onclick="updateBut(this)">修改</button></td>
	</tr>
</li>
</form>
<%} %>
</ul>
    </div>
    </table>
	</body>
</html>
