<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
function Adds(){
var spname=document.getElementById("na").value;
var color=document.getElementById("z").value;
var spxh=document.getElementById("x").value;
var spcc=document.getElementById("c").value;
var spnc=document.getElementById("n").value;
var spclq=document.getElementById("lq").value;
var jiage=document.getElementById("j").value;
var xid=document.getElementById("xid").value;
var src=document.getElementById("s").value;
var srca=document.getElementById("sa").value;
if(spname !=""&&color!=""&&spxh!=""&&spcc!=""&&spnc!=""&&spclq!=""&&jiage!="" &&xid!=""&&src!=""&&srca!="" ){
 window.location.href="/HuaWeiS/Admin/Chanpin?method=Adds&spname="+spname+"&color="+color+"&spxh="+spxh+"&spcc="+spcc+"&spnc="+spnc+"&spclq="+spclq+"&jiage="+jiage+"&xid="+xid+"&src="+src+"&srca="+srca;
}

}
   var layer,upload;
        $(function (){  //jQuery组件的ready事件，
            layui.use(['upload','layer'],function(){  //layui中包含了大量的组件，此处指明仅仅加载upload和layer组件
                upload = layui.upload; //upload指代上传组件
                layer=layui.layer;  //layer指代各种弹出窗口弹出窗口组件，非常有利于业务的控制，我们项目中可以大量使用
                upload.render({
                    elem:'#test1',  //点击哪个按钮时，选择本地文件 
                        url:'/HuaWeiS/Admin/Chanpin?method=saveImg', //服务器端接收文件数据的地址
                        done:function(res){ //当服务器端保存成功后回调此方法，已经约定res格式为json
                            //res对象中到底有哪些属性， 由服务器端控制。    
                      layer.alert(res.message);  //layer的alert方法，可以呈现1个更好看的弹出框  
                        $("#s").val("/HuaWiS/images/"+res.message)
                         $("#sa").val("/HuaWiS/images/"+res.message)
                        }
                    });
              });
        });
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

      <form  class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
  
        
            <img class="am-img-thumbnail am-img-bdrs" src="images/lps.jpg" alt="">
            <div class="gallery-title"><h1>华为为你共享</h1></div>
             <table border="1">
			 
			  <tr>  <td>	          商品名:<input type="text" name="spname"  placeholder="请输商品名" autocomplete="off" class="layui-input" id="na" ></td></tr>
				<tr> <td>			商品颜色：	<input type="text" name="color"  placeholder="请输商品颜色" autocomplete="off" class="layui-input" id="z" ></td></tr>
				<tr>  <td>			商品型号：	<input type="text" name="spxh"  placeholder="请输商型号" autocomplete="off" class="layui-input" id="x" ></td></tr>
				<tr>  <td>			商品储存：	<input type="text" name="spcc"  placeholder="请输商品储存" autocomplete="off" class="layui-input" id="c" ></td></tr>
				<tr>  <td>			商品储存：	<input type="text" name="spnc"  placeholder="请输商品内存" autocomplete="off" class="layui-input" id="n" ></td></tr>
				<tr>   <td>			商品处理器：	<input type="text" name="spclq"  placeholder="请输商品处理器" autocomplete="off" class="layui-input" id="lq" ></td></tr>
				<tr>   <td>			商品价格：	<input type="text" name="jiage"  placeholder="请输商品价格" autocomplete="off" class="layui-input" id="j" ></td></tr>
				<tr>  <td>			商品类别：	<input type="text" name="xid"  placeholder="请输商品类别" autocomplete="off" class="layui-input" id="xid" ></td></tr>
				 <tr>  <td>			商品图一：	<input type="text" name="spnc"  placeholder="请输商品图地址" autocomplete="off" class="layui-input" id="s" ></td></tr>
				  <tr>  <td>			商品图二：	<input type="text" name="spnca"  placeholder="请输商品图地址" autocomplete="off" class="layui-input" id="sa" ></td></tr>
                   
   
       
         </table>
          <button type="button" class="layui-btn" id="test1">上传图片</button>
          <div class="con" >  <button type="button" class="am-btn am-btn-default" onclick="Adds()"  ><span class="am-icon-plus">添加</span> </button>
         </div>
   
       
         
      </form>

    
    </div>
	</body>
</html>
