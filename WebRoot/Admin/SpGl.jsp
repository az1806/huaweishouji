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
	content:'/HuaWeiS/Admin/Chanpin?method=Comes&spid='+typeid, 
	
	});
	});
	}
	
	
	</script>
	
	
	
	</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

      <hr>

      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
      <form>
      <table border="2" align="center"  class="am-fl am-cf">
      <div class="but">
<a href="/HuaWeiS/Admin/GoodsAdds.jsp"><input type="button"  class="layui-btn"  value="添加"></a>
	</a>
						</div>
      <tr><th>商品id</th> <th >商品</th><th>颜色</th><th>型号</th><th>储存</th><th>内存</th><th>处理器</th><th>价格</th><th>商品类别id</th><th>图一</th><th>图二</th><th>功能</th><th>功能</th> </tr>
      <% for(int v=0;v<pa.size();v++ ){ %>
      
        <li><tr>
         <td width="50px"> <div class="gallery-title"><%=pa.get(v).getSid() %></div></td>
        <td width="120px"><div class="gallery-title"><%=pa.get(v).getSname() %></div> </td>
        <td>   <div class="gallery-title"><%=pa.get(v).getColor() %></div> </td>
         <td>    <div class="gallery-title"><%=pa.get(v).getSpxh() %></div></td>
          <td>   <div class="gallery-title"><%=pa.get(v).getSpcc() %></div></td>
          <td>   <div class="gallery-title"><%=pa.get(v).getSpnc() %></div></td>
          <td>   <div class="gallery-title"><%=pa.get(v).getSpclq() %></div></td>
          <td width="50px">   <div class="gallery-title"><%=pa.get(v).getJiage() %></div></td>
            <td> <div class="gallery-title"><%=pa.get(v).getXid() %></div></td>
       <td>      <div class="gallery-title"><%=pa.get(v).getSrc() %></div></td>
         <td>    <div class="gallery-title"><%=pa.get(v).getSrca() %></div></td>
         <td>    <div>  <a href="/HuaWeiS/Admin/Chanpin?method=ShanChu&sid=<%=pa.get(v).getSid() %>">  <button type="button" class="am-btn am-btn-default">删除</button></a></div>
		  <td>		      <div> <button type="button" class="am-btn am-btn-default" data-id="<%=pa.get(v).getSid() %>" onclick="updateBut(this)">修改 </button></li></ul>
						</div>
          
        </tr></li><%} %></table>
       </form>
      </ul>

    
    </div>
	</body>
</html>
