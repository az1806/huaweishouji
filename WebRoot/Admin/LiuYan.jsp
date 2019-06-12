<%@page import="com.entitly.LiuYan"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% List<LiuYan>  ly=(List<LiuYan>)request.getAttribute("ly");   %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
	content:'/HuaWeiS/Admin/LiuYan?method=getLiuYanid&id='+typeid, 
	
	});
	});
	}
	
	
	</script>
		<style type="text/css">
	#k{
	width: 50px;
	height: 30px;
	}
	</style>
	</head>
	<body>
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户留言</strong><small></small></div>
      </div>

      <hr>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
          <div class="am-btn-toolbar">
            <div class="am-btn-group am-btn-group-xs">
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
                <th class="table-check"><input type="checkbox"></th><th class="table-id">ID</th><th class="table-title">标题</th><th class="table-date am-hide-sm-only">时间</th><th>联系方式</th><th >邮箱</th><th class="table-type">内容</th><th >状态</th><th class="table-set">操作</th>
              </tr>
              </thead>
              <% for(int i=0;i<ly.size();i++){ %>
              <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td><%=ly.get(i).getLyid() %></td>
                <td><a href="#"><%=ly.get(i).getLyname() %></a></td>
                <td  class="am-hide-sm-only"><%=ly.get(i).getLytime() %></td>
                <td><%=ly.get(i).getLyhao() %></td>
                <td><%=ly.get(i).getLyeamil() %></td>
                <td><%=ly.get(i).getLyneirong() %></td>
                <td><%=ly.get(i).getLyzhuangtai() %></td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" href="LiuYan?method=deleteLY&id=<%=ly.get(i).getLyid() %>"><span class="am-icon-trash-o"></span> 删除</a>
                   	<button type="button" class="am-btn am-btn-default" data-id="<%=ly.get(i).getLyid()%>" onclick="updateBut(this)"><span class="am-icon-trash-o">修改</span> </button>
                    </div>
                  </div>
                </td>
              </tr>
              
              </tbody>
              <%} %>
            </table>
            <div class="am-cf">
              共 15 条记录
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
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