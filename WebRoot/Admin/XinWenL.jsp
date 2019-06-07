
<%@page import="com.entitly.XinWenL"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
				List<XinWenL> xx =(List<XinWenL>)request.getAttribute("xx");
			%>
			
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		<link rel="stylesheet" href="/HuaWeiS/Admin/css/admin.css" />
	</head>

	<body>
	<meta charset="UTF-8">
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">资讯类别管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs" >
						
							<input type="text" name="xwname"  id="xwname"  >
							<button type="submit" onclick="addXinWenL()" class="am-btn am-btn-default" ><span class="am-icon-plus"></span> 新增</button>
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
			<script type="text/javascript">
	function addXinWenL(){
	var xwname =document.getElementById("xwname").value;
		if(xwname!=" "){
			window.location.href="XinWenL?method=addXinWenL&xwname="+xwname;//跳转页面（重定向）
		}
		
	}
	
</script>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">新闻类别</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<%
				for(int i=0;i<xx.size();i++){
			%>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=xx.get(i).getXwid()%></td>
									<td>
										<a href="#"><%=xx.get(i).getXwname()%></a>
									</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
												<a class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" href="XinWenL?method=deleteXinWenL&id=<%=xx.get(i).getXwid() %>"><span class="am-icon-trash-o"></span> 删除</a>
											</div>
										</div>
									</td>
								</tr>
										
						
								
								<% }%>	
							
							</tbody>
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