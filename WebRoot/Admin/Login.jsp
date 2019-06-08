<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>华为为你共享</title>

		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="images/favicon.ico"/>
		<link rel="bookmark" href="images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="framework/html5shiv.min.js"></script>
	      	<script src="framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
		<script src="framework/jquery-ui-1.10.4.min.js"></script>
		<script src="framework/jquery.mousewheel.min.js"></script>
		<script src="framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->

		<link rel="stylesheet" type="text/css" href="css/login.css">
		<script type="text/javascript" src="js/login.js"></script>
	</head>

	<body>
		
		<!--主体 开始-->
		<div class="login_main">
			<!--轮播图 开始-->
			<div class="layui-carousel lbt" id="loginLbt">
				<div carousel-item>
					<div class="item" style="background: url(images/login_bg1.jpg) no-repeat; background-size: cover;"></div>
					<div class="item" style="background: url(images/login_bg2.jpg) no-repeat; background-size: cover;"></div>
				</div>
			</div>
			<!--轮播图 结束-->
			<div class="logo">
				<img src="images/HWuser.jpg" />
				<div>
					<h1>华为为你共享</h1>
					<p>版本号:19.3.01</p>
				</div>
			</div>
			<div class="form_tzgg">
				<div class="form">
					<form action="/HuaWeiS/Login"  method="post""layui-form">
						<div class="title">用户登录</div>
						<div class="con" onclick="getFocus(this)">
							<input type="text" name="glname"  placeholder="请输入您的用户名" autocomplete="off" class="layui-input">
						</div>
						<div class="con" onclick="getFocus(this)">
							<input type="password" name="glpwd" placeholder="请输入您的账户密码" autocomplete="off" class="layui-input">
						</div>
						<div class="but">
							<input type="submit"  class="layui-btn"  value="登录">
						</div>
						<div class="apply"><a href="#">企业注册申请</a></div>
					</form>
				</div>
				<script>
					layui.use('form', function() {
						var form = layui.form;
						form.verify({
				            glname: function(value, item){ //value：表单的值、item：表单的DOM对象
				                if(value == null || value == ""){
				                    return '请输入您的用户名！';
				                }
				            },
				            glpwd: function(value, item){ 
				                if(value == null || value == ""){
				                    return '请输入您的账户密码！';
				                }
				            }
				        });
						//监听提交
						form.on('submit(formDemo)', function(data) {
							
							return false;
						});
					});
				</script>
				<div class="tzgg">
					<div class="title">通知公告</div>
					<div class="con">
						<ul>
							<li><span>05-01</span><a href="#" target="_blank">穷在闹市框架升级</a></li>
							<li><span>04-16</span><a href="#" target="_blank">穷在闹市无人问，富在深山有远亲</a></li>
							<li><span>02-23</span><a href="#" target="_blank">没有最好的代码，只有最好的思路</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--主体 结束-->
	</body>

</html>