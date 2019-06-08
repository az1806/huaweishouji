<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
  function Adds(){
     
       var ygname=document.getElementById("l").value;
       var ygsex=document.getElementById("m").value;
       var ygphone=document.getElementById("o").value;
       var ygphoto=document.getElementById("k").value;
       
       if(ygname !=""&&ygsex!=""&&ygphone!=""&&ygphoto!="" ){
 window.location.href="/HuaWeiS/Admin/UserS?method=Add&ygname="+ygname+"&ygsex="+ygsex+"&ygphone="+ygphone+"&ygphoto="+ygphoto;
}
       
  }

</script>
	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理员管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field">
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main"border="1">

						    <tr>  <td>	          员工名字：<input type="text" name="ygname"   class="layui-input" id="l" ></td></tr>
							<tr>  <td>	          员工性别:<input type="text" name="ygsex"   class="layui-input" id="m" ></td></tr>
							<tr>  <td>	          联系方式:<input type="text" name="ygphone"   class="layui-input" id="o" ></td></tr>
							<tr>  <td>	          员工照片:<input type="text" name="ygsex"   class="layui-input" id="k" ></td></tr>
							<tr>  <td>	  <div class="con" >  <button type="button" class="am-btn am-btn-default" onclick="Adds()"><span class="am-icon-plus">添加</span> </button>  <div class="con" >  </td></tr>	
						</table>
						
					</form>
				</div>
			</div>
		</div>
	</body>
</html>

