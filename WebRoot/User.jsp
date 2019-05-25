<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<jsp:include page="header.jsp"></jsp:include>


<section class="about-section">
    <div>
        <span>
            <article>公司介绍</article>
            <h6>COMPANY INTRODUCTION</h6>
        </span>
        <span></span>
    </div>
    <div></div>
    <div class="about-content">
        <div class="about-image"> <img src="./images/banner3.jpg" alt=""></div>

        <article><p>大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升
            级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。
        </p>
            <p>大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升
                级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。
            </p>
        </article>


    </div>

    <div class="about-box">
        <div class="about-leftbox">
            <img src="images/banner4.jpg" alt="">
        </div>
        <div class="about-rightbox">
            <h1>企业文化</h1>
            <p>CORPORATE CULTURE</p>
            <article>我们的家居一直秉承绿色的核心理念，以“贴近生活、用心服务、用爱做事”为企业核心文化价值。所有家具确保以最环保、安全、绿色为基础色调和核心基因，全心全意为您打造一个安全的、贴心的、精致的生活空间，环保、安全、精致不仅是对产品的用心打造，更是对员工、事业伙伴、用户、社会的责任和担当。</article>
        </div>
    </div>

    <div class="about-team">
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
            <p >设计团队</p>
            <span>DESIGN TEAM</span>
        </div>
         <%  
          List<User> us=(List<User>) request.getAttribute("username");
        
        
        for(int i=0;i<us.size();i++) {
        %>
        <div class="about-team-headimg">
        
        
        <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
            <img src="<%=us.get(i).getYgphoto() %>" alt="">
            <p><%=us.get(i).getYgname() %></p>
            
        </div>
        <%} %>
       
        <div class="about-slogan">
            <div>
            <p></p>
            </div>
        </div>
    </div>
</section>


﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>