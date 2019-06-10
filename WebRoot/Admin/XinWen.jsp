<%@page import="com.entitly.XinWen"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<XinWen> ww =(List<XinWen>)request.getAttribute("ww"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
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
	title:"员工信息修改",
	type:2,
	area:['45%','40%'],
	scrollbar:false,
	content:'/HuaWeiS/Admin/XinWen?method=getXWid&id='+typeid, 
	
	});
	});
	}
						
	function addXinWen(){
	var zxname =document.getElementById("zxname").value;
	var zxneirong =document.getElementById("zxneirong").value;
	var zxtime =document.getElementById("zxtime").value;
	var xwid =document.getElementById("xwid").value;
	
		if(zxname!=" "&&zxneirong!=" " &&zxtime!=" "&&xwid!=" "){
			window.location.href="/HuaWeiS/Admin/XinWen?method=addXinWen&zxname="+zxname+"&zxneirong="+zxneirong+"&zxtime="+zxtime+"&xwid="+xwid;//跳转页面（重定向）
		}
		
	}
	
	</script>
		
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">新闻管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
					<form >
						<div class="am-btn-group am-btn-group-xs">
							添加名称
							<input type="text" name="zxname"  id="zxname"  ></br>
							添加内容
							<input type="text" name="zxneirong"  id="zxneirong" ></br>
							添加时间
							<input type="text" name="zxtime"  id="zxtime"  ></br>
							添加新闻类的id
							<input type="text" name="xwid"  id="xwid"  ></br>
							
							<button type="button" class="am-btn am-btn-default" onclick="addXinWen()"><span class="am-icon-plus"></span> 新增</button>
							</form>
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
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">名称</th>
									<th class="table-type">内容</th>
									<th class="table-date am-hide-sm-only">日期</th>
									<th class="table-author am-hide-sm-only">新闻ID</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
						
				<%    for(int i=0;i<ww.size();i++){   %>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=ww.get(i).getZxid()%></td>
									<td>
										<a href="#"><%=ww.get(i).getZxname()%></a>
									</td>
									<td><%=ww.get(i).getZxneirong()%></td>
									
									<td class="am-hide-sm-only"><%=ww.get(i).getZxtime()%></td>
									<td class="am-hide-sm-only"><%=ww.get(i).getXwid()%></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
													<button type="button" class="am-btn am-btn-default" data-id="<%=ww.get(i).getZxid()%>" onclick="updateBut(this)"><span class="am-icon-trash-o">修改</span> </button>
												<a class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"href="XinWen?method=deleteXinWen&id=<%=ww.get(i).getZxid() %>"><span class="am-icon-trash-o"></span> 删除</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
							<% } %>
						</table>
						<div class="am-cf">
							共 15 条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
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
