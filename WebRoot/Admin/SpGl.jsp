<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<ShangPinLei> pas=(List<ShangPinLei>)  request.getAttribute("safname");
List<ShangPin> pts=(List<ShangPin>) request.getAttribute("spname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		 <link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		  <link rel="stylesheet" href="/HuaWeiS/Admin//css/admin.css" />
	<link rel="stylesheet" href="/HuaWeiS/Admin/layui/css/layui.css" type="text/css"></link>
	<script type="text/javascript" src="/HuaWeiS/Admin/layui/layui.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

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
	function DchaX(){

var spname=$("#spname").val();
var color=$("#color").val();
var spxh=$("#spxh").val();
var xid=$("select option:selected").val();
if(xid==""){
xid=null;
}
 window.location.href="/HuaWeiS/Admin/Chanpin?method=DchaX&spname="+spname+"&color="+color+"&spxh="+spxh+"&xid="+xid;

}
	
	</script>
	<style type="text/css">
	#k{
	width: 50px;
	height: 30px;
	}
	
	tr{
	width: 1600px;
	}
	#td{
	width:200px; 
	}

	</style>
	
	
	</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

     
<hr>
<from>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
						<a href="/HuaWeiS/Admin/GoodsAdds.jsp"><input type="button"  class="layui-btn"  value="添加"></a>
						</div>
					</div>
				</div>
				
			
				
						<table border="1">
				<tr>	
					<td >商品:<input type="text" class="am-form-field" name="spname" id="spname" ></td>
					<td >商品颜色<input type="text" class="am-form-field" name="color" id="color"  ></td>
					<td >商品型号：	<input type="text" class="am-form-field" name="spxh" id="spxh" ></td>
					
					<td >
					<select>
					<option value="0">请选择</option>
					
						<%for( int  i=0;i<pts.size();i++) {%>
						
						<option value="<%=pts.get(i).getXid() %>" ><%=pts.get(i).getName() %>
						</option>
					
					
						<%} %>
					</select></td>
					
						<td><span class="am-input-group-btn">
            <button class="am-btn am-btn-default"  type="button"  onclick="DchaX()">搜索</button>
          </span></td>
       </tr></table>
			</div></form>	
    
      <form>
      <table border="2" align="center"  class="am-fl am-cf">
     
      <tr><th>商品id</th> <th >商品</th><th>颜色</th><th>型号</th><th>储存</th><th>内存</th><th>处理器</th><th>价格</th><th>商品类别id</th><th>图一</th><th>图二</th><th>功能</th><th>功能</th> </tr>
      <% for(int v=0;v<pas.size();v++ ){ %>
      
        <li><tr>
         <td width="50px"> <div class="gallery-title"><%=pas.get(v).getSid() %></div></td>
        <td width="120px"><div class="gallery-title"><%=pas.get(v).getSname() %></div> </td>
        <td>   <div class="gallery-title"><%=pas.get(v).getColor() %></div> </td>
         <td>    <div class="gallery-title"><%=pas.get(v).getSpxh() %></div></td>
          <td>   <div class="gallery-title"><%=pas.get(v).getSpcc() %></div></td>
          <td>   <div class="gallery-title"><%=pas.get(v).getSpnc() %></div></td>
          <td>   <div class="gallery-title"><%=pas.get(v).getSpclq() %></div></td>
          <td width="50px">   <div class="gallery-title"><%=pas.get(v).getJiage() %></div></td>
            <td> <div class="gallery-title"><%=pas.get(v).getXid() %></div></td>
       <td>      <div class="gallery-title" ><img src="<%=pas.get(v).getSrc() %>" id="k"></div></td>
         <td>    <div class="gallery-title" ><img src="<%=pas.get(v).getSrca() %>" id="k"></div></td>
         <td>    <div>  <a href="/HuaWeiS/Admin/Chanpin?method=ShanChu&sid=<%=pas.get(v).getSid() %>">  <button type="button" class="am-btn am-btn-default">删除</button></a></div>
		  <td>		      <div> <button type="button" class="am-btn am-btn-default" data-id="<%=pas.get(v).getSid() %>" onclick="updateBut(this)">修改 </button></li></ul>
						</div>
          
        </tr><%} %></table>
       </form>
      </ul>

    
    </div>
	</body>
</html>
