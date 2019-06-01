<%@ page language="java" import="java.util.*" pageEncoding="UTf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
 
      <form  action="/HuaWeiS/Sps" method="post" class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
  
        
            <img class="am-img-thumbnail am-img-bdrs" src="images/lps.jpg" alt="">
            <div class="gallery-title"><h1>华为为你共享</h1></div>
          <div class="con" onclick="getFocus(this)">	
								商品编号：	<input type="text" name="sid"  placeholder="请输商品颜色" autocomplete="off" class="layui-input"></div>
            <div class="con" onclick="getFocus(this)">

				商品名：	<input type="text" name="spname"  placeholder="请输商品名" autocomplete="off" class="layui-input"></div>
					<div class="con" onclick="getFocus(this)">	
								商品颜色：	<input type="text" name="color"  placeholder="请输商品颜色" autocomplete="off" class="layui-input"></div>
							<div class="con" onclick="getFocus(this)">
										商品型号：	<input type="text" name="spxh"  placeholder="请输商型号" autocomplete="off" class="layui-input"></div>
								<div class="con" onclick="getFocus(this)">
											商品储存：	<input type="text" name="spcc"  placeholder="请输商品储存" autocomplete="off" class="layui-input"></div>
								<div class="con" onclick="getFocus(this)">
												商品类别：	<input type="text" name="xid"  placeholder="请输商品类别" autocomplete="off" class="layui-input"></div>
						
        
            <div class="gallery-title"><input type="submit" value="修改" /></div>
       
   
       
         
      </form>
     

    
    </div>
	</body>
</html>
