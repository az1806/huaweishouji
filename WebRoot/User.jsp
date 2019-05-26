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
            <h6>华为技术有限公司</h6>
        </span>
        <span></span>
    </div>
    <div></div>
    <div class="about-content">
        <div class="about-image"> <img src="images/GongSH.jpg" alt=""></div>

        <article><p>华为技术有限公司是一家生产销售通信设备的民营通信科技公司，于1987年正式注册成立，总部位于中国广东省深圳市龙岗区坂田华为基地。 [1]  华为是全球领先的信息与通信技术（ICT）解决方案供应商，专注于ICT领域，坚持稳健经营、持续创新、开放合作，在电信运营商、企业、终端和云计算等领域构筑了端到端的解决方案优势，为运营商客户、企业客户和消费者提供有竞争力的ICT解决方案、产品和服务，并致力于实现未来信息社会、构建更美好的全联接世界。2013年，华为首超全球第一大电信设备商爱立信，排名《财富》世界500强第315位。
        </p>
            <p>截至2016年底，华为有17万多名员工，华为的产品和解决方案已经应用于全球170多个国家，服务全球运营商50强中的45家及全球1/3的人口。
            </p>
              <p>
            2016年8月，全国工商联发布“2016中国民营企业500强”榜单，华为以3950.09亿元的年营业收入成为500强榜首。 [2]  8月，华为在"2016中国企业500强"中排名第27位。 [3]  2017年6月6日，《2017年BrandZ最具价值全球品牌100强》公布，华为名列第49位。 [4]  2018年7月19日美国《财富》杂志发布了最新一期的世界500强名单 ，华为排名第72位。 [5]  2018年《中国500最具价值品牌》华为居第六位。 [6]  12月18日，世界品牌实验室编制的《2018世界品牌500强》揭晓，华为排名第58位。 [7] 
                </p>
            <p>
            2018年2月，沃达丰和华为完成首次5G通话测试； [8]  2018年8月，澳大利亚政府以国家安全担忧为由，禁止华为和中兴为其规划中的5G移动网络供应设备。2019年3月，华为表示，美国政府涉嫌攻击华为服务器。 [9] 
            </p>
            <p>
            </p>
        </article>


    </div>

    <div class="about-box">
        <div class="about-leftbox">
            <img src="images/Jsp.jpg" alt="">
        </div>
        <div class="about-rightbox">
            <h1>企业文化</h1>
            <p>华为技术有限公司</p>
            <article> <p>
            华为非常崇尚“狼”，认为狼是企业学习的榜样，要向狼学习“狼性”，狼性永远不会过时。</p>
            <p>作为最重要的团队精神之一，华为的“狼性文化”可以用这样的几个词语来概括：学习，创新，获益，团结。用狼性文化来说，学习和创新代表敏锐的嗅觉，获益代表进攻精神，而团结就代表群体奋斗精神。</p></article>
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
            <span><%=us.get(i).getYgname() %><span>
            
        </div>
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