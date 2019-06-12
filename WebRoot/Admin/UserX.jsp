<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	 UserHouTai use =(	 UserHouTai )request.getAttribute("yname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/HuaWeiS/Admin/css/amazeui.min.css" />
		<link rel="stylesheet" href="/HuaWeiS/Admin/css/admin.css" />
		<script type="text/javascript" src="/HuaWeiS/Admin/layui/layui.js"></script>
		<link rel="stylesheet" href="/HuaWeiS/Admin/layui/css/layui.css" type="text/css"></link>
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	
	<script type="text/javascript">
	function USXiu(){

var ygname=document.getElementById("ygn").value;
var ygsex=document.getElementById("ygs").value;
var ygphone=document.getElementById("ygp").value;
var ygphoto=document.getElementById("ygo").value;
if(ygname!=""&&ygsex!=""&&ygphone!=""&&ygphoto!=""){
 window.location.href="/HuaWeiS/Admin/UserS?method=USXiu&ygid="+<%=use.getYgid()%>+"&ygname="+ygname+"&ygsex="+ygsex+"&ygphone="+ygphone+"&ygphoto="+ygphoto;
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
                            $("#ygo").val("/HuaWiS/images/"+res.message); 
                        }
                    });
              });
        });
	</script>
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">员工管理</strong><small></small></div>
			</div>

			<hr>

			
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							
							<tbody>
								<tr>
									
									<td><input type="text" value="<%=use.getYgname() %>" id="ygn" name="ygname"></td>
									<td>
										<input type="text" id="ygs" name="ygsex" value="<%=use.getYgsex() %>">
									</td>
									<td> <input type="text" id="ygp" name="ygphone " value="<%=use.getYgphone()%>"></td>
									<td ><input type="text" id="ygo" name="ygphoto" value="<%=use.getYgphoto() %>" ></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
											<tr>  <td><button type="button" class="layui-btn" id="test1">上传图片</button>  </td></tr>
												<button type="button" class="am-btn am-btn-default" onclick="USXiu()">修改 </button>

											</div>
										</div>
									</td>
								</tr>
								
							</tbody>
						</table>
						
					</form>
				</div>
			</div>
		</div>
	</body>
</html>