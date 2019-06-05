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
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
function Add(){
var name=document.getElementById("s").value;
$.post("Chanpin?method=Add",{"spname":name},function(res){
if(res.success){

alert(res.message);
location.herf="Chanpin?method=Come";
}
else{
alert(res.message);
}
}
,"json");}


</script>
		 <link rel="stylesheet" href="css/amazeui.min.css" />
		  <link rel="stylesheet" href="css/admin.css" />
		 
		 

</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

      <hr>

      <form   class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
  
        
            <img class="am-img-thumbnail am-img-bdrs" src="images/lps.jpg" alt="">
            <div class="gallery-title"><h1>华为为你共享</h1></div>
         <div class="gallery-title">
						商品类名：	<input type="text" id="s"  name="spname"  placeholder="请输商品类" autocomplete="off" class="layui-input">
						</div>
        
            <div class="gallery-title"><input type="button"  onclick="Add()"  value="添加"  ></div>
      </form>

    
    </div>
	</body>
</html>

  