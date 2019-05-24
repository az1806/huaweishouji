<%@ page language="java" import="java.util.*,com.entitly.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

<jsp:include page="header.jsp"></jsp:include>


<section class="index-section">
    <div>
        <span></span>
        <span></span>
    </div>
    <div class="index-content">
        <section class="index-content-section-first"><div><img src="images/Gongsi.jpg" alt=""></div> </section>
        <section class="index-content-section-second">
            <div>
                <div class="index-auto">
            <article>公司介绍</article>
            <h6>COMPANY INTRODUCTION</h6>
            <main>FURNITUREDESGIN是一家拥有丰富的经验的家具设计公司。所设计的家具销往全国各地。设计的实践，在于为生活提供更舒适的环境及精确负责的施工，我们具有非常专业的团队，为客户创造符合装修风格的贴心家具。满足客户的要求与喜好，甚至将梦想中的生活氛围透过专业的感知力呈现，将家具透过色彩以及最和谐的比例设计而成。公司凭借高素质的人才队伍，先进的工艺和完善的企业管理，赢得了国内外客户的良好赞誉。</main>
            <a class="index-button" href="#">查看详情</a>
                </div>
            </div>
        </section>
    </div>
</section>

<section class="index-product">
    <main>
        <ul>
            <li class="index-active"><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>
    </main>
    <main></main>
    <main></main>
</section>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="#">MORE &#62; &#62;</a>
    </div>
       
    <div class="index-content">
 
        <div class="product-list">
          <%   List<ShangPinLei> pa=(List<ShangPinLei>) request.getAttribute("saname");%>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/Huawei/CanShuo?n=<%=pa.get(0).getXid()%>">
                    <img src="<%=pa.get(0).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/huaweishouji/CanShuo?n=<%=pa.get(1).getXid()%>">
                    <img src="<%=pa.get(1).getSrc()%>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/huaweishouji/CanShuo?n=<%=pa.get(4).getXid()%>">
                    <img src="<%=pa.get(4).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/huaweishouji/CanShuo?n=<%=pa.get(5).getXid()%>">
                    <img src="<%=pa.get(5).getSrc() %>" />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/huaweishouji/CanShuo?n=<%=pa.get(8).getXid()%>">
                    <img  src="<%=pa.get(8).getSrc() %>"  />
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/huaweishouji/CanShuo?n=<%=pa.get(9).getXid()%>">
                    <img src="<%=pa.get(9).getSrc() %>" >
                </a>
            </div>
        </div>
    </div>
</section>


<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="#">MORE &#62; &#62;</a>
    </div>
    <div class="index-content">


        <div class="new-index">
            <ul>
                <li><img  src="images/productlogo.png" alt=""> </li>
                <li>  <a href="article_list_content.html"><h3>怎么搭配茶几与沙发?</h3>
                    <article>在现代居住空间里面，有沙发的地方似乎总也少不了
                        茶几的身影。尤其在现代客厅里，一款实用、时尚的</article></a></li>
            </ul>
            <ul>
                <li><a href="article_list_content.html"><h3>家具有哪些类型?</h3>
                    <article>按家具从风格上可以分为：现代家具、欧式古典家具、
                        美式家具、中式古典家具（也就是红木家具），还有
                    </article>
                </a></li>
                <li><a href="article_list_content.html"><h3>实木家具需保养防开裂</h3>
                    <article>实木家具越来越受人们的欢迎，有很多业主在装修时
                        都选择实木家具。但是他们购买之后不对它进行保养
                    </article></a>
                </li>
                <li><a href="article_list_content.html"><h3>卧室如何选择合适的衣橱家具色彩</h3>
                    <article>要选择合适的家具色彩，首先要符合个人爱好，又要
                        注意与房间的大小、室内光线的明暗相结合，并且要
                    </article></a>
                </li>
                <li><a href="article_list_content.html"><h3>韩派办公家具制作工艺过程</h3>
                    <article>苏州韩派办公家具制作工艺过程，品牌办公家具厂家
                        都具有一整套生产流程，通过对工艺流程的规范以及
                    </article></a>
                </li>
            </ul>

        </div>
    </div>
</section>

﻿<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>