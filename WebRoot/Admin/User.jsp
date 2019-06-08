<%@page import="com.entitly.UserHouTai"%>
<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 List<UserHouTai> us=(List<UserHouTai>) request.getAttribute("ygname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">员工管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<a href="/HuaWeiS/Admin/UserAdd.jsp"><button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button></a>
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
									<th class="table-title">姓名</th>
									<th class="table-author am-hide-sm-only">性别</th>
									<th class="table-type">手机号</th>
									<th class="table-type">照片</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
						<% for ( int i=0;i<us.size();i++){ %>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=us.get(i).getYgid() %></td>
									<td>
										<a href="#"><%=us.get(i).getYgname() %></a>
									</td>
									<td class="am-hide-sm-only"><%=us.get(i).getYgsex() %></td>
									<td> <%=us.get(i).getYgphone() %></td>
									<td> <%=us.get(i).getYgphoto() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
												<a href="/HuaWeiS/Admin/UserS?method=ShanChu&ygid=<%=us.get(i).getYgid() %>"><button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								<% }%>
							</tbody>
							
						
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