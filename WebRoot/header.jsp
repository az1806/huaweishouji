<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <title>华为企业官网</title>
    ﻿   ﻿<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="css/default.min.css?t=227" />
<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="lib/jquery/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>

<script src="lib/amazeui/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script type="text/javascript" src="lib/handlebars/handlebars.min.js"></script>
<script type="text/javascript" src="lib/iscroll/iscroll-probe.js"></script>
<script type="text/javascript" src="lib/amazeui/amazeui.min.js"></script>
<script type="text/javascript" src="lib/raty/jquery.raty.js"></script>
<script type="text/javascript" src="js/main.min.js?t=1"></script>
</head>
<body>
<header>
  <div class="header-top">
        <div class="width-center">
            <div class="header-logo "><img src="images/HuaWei.jsp" alt=""></div>
            <div class="header-title div-inline">
                <strong>华为有限公司</strong>
                <span>www.huaweixin.com</span>
            </div>

            <div class="search-box div-inline">
              <form action="/HuaWeiS/ChaXun" method="get" >
              <div class="input-box">  <input type="text" name="sr" placeholder="             请输入关键字"></div>
                 <div class="search-botton"><input type="submit"  value="搜索"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="header-nav">
        <button class="am-show-sm-only am-collapsed font f-btn" data-am-collapse="{target: '.header-nav'}">Menu <i
                class="am-icon-bars"></i></button>
        <nav>
        <ul class="header-nav-ul am-collapse am-in">
            <li class="on"><a href="/HuaWeiS/GongSi" name="index">首页</a></li>
            <li><a href="/HuaWeiS/User" name="about">关于我们</a></li>
            <li><a href="/HuaWeiS/ShangPin" name="show">产品展示</a></li>
            <li><a href="/HuaWeiS/article" name="new">新闻资讯</a></li>
            <li><a href="/HuaWeiS/Contact " name="message">联系我们</a>
                <div class="secondary-menu">
                    <ul><li><a href="message.jsp" class="message"></a></li></ul>
                </div>
            </li>
        </ul>
        </div>
<div class="am-slider am-slider-default" data-am-flexslider="{playAfterPaused: 8000}">
    <ul class="am-slides">
        <li><img src="images/lptj.jpg" alt="" ></li>
        <li><img src="images/HUAWEIp30.jpg" alt="" ></li>
        <li><img src="images/meigui.jpg" alt="" ></li>
        <li><img src="images/geyan.jpg" alt="" ></li>
    </ul>
</div>

        </nav>
    </div>

</div>

</header>

</body>
</html>
