<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<GongSi> gs=(List<GongSi>)request.getAttribute("gsname");
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
	title:"公司信息修改",
	type:2,
	area:['45%','40%'],
	scrollbar:false,
	content:'/HuaWeiS/Admin/Chanpin?method=lGS&gsid='+typeid, 
	
	});
	});
	}
	
	
	</script>
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">公司信息管理</strong><small></small></div>
			</div>

			<hr>

		
			<div class="am-g">
				<div class="am-u-sm-12">
				
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main" border="1" align="center">
						 <%for(int i=0;i<gs.size();i++) {%>
							<thead>
								<tr>
							
								<th  class="table-title">公司名字</th>
								<th class="table-title">公司简介</th>
								<th class="table-title">公司电话</th>
								<th class="table-title">公司Email</th>
								<th class="table-title">公司地址</th>
								<th class="table-set">功能</th>
									
								</tr>
							</thead>
							<tbody>
								<tr>
							
                          <td><%=gs.get(i).getGsname() %></td>
                          <td><%=gs.get(i).getJianjie() %></td>
                         <td><%=gs.get(i).getGsphone() %></td>
                         <td><%=gs.get(i).getGsemail() %></td>
                            <td><%=gs.get(i).getGsdz() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" class="am-btn am-btn-default" data-id="<%=gs.get(i).getGsid() %>" onclick="updateBut(this)">修改 </button>
											</div>
										</div>
									</td>
								</tr>
								<%} %>
								
						</table>
						<div class="am-cf">
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">»</a>
									</li>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>

			</div>
		</div>
		

	</body>

</html>