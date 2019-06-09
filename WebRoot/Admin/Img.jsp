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
		<script type="text/javascript" src="layui/layui.js"></script>
		<link rel="stylesheet" href="layui/css/layui.css" type="text/css"></link>
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">
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
                        }
                    });
              });
        });
		</script>
		
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">图片添加</strong><small></small></div>
			</div>

			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						  商品名字：<input type="text" value="Jim Green" name="dname"/><br />
        图片：<img id="imgFace" style="width:120px" /><br />        
        <input type="file" name="file" class="layui-upload-file" />    <br />
        <button type="button" class="layui-btn" id="test1">上传图片</button>
						
					</form>
				</div>
			</div>
		</div>
	</body>
</html>