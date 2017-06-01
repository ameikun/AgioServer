<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/26
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>agio</title>
    <link href="/AgioServer/resources/storemainpage/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/AgioServer/resources/storemainpage/css/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div class="banner"> </div>
<div class="header">
    <div class="header-top">
        <div class="logo">
            <h1><a href="mainpage.jsp">AiZGo</a></h1>
        </div>
        <div class="top-nav">
            <span class="menu"> </span>
            <ul>
                <li><a href="store.jsp" class="scroll" data-hover="加入AiZGo">加入AiZGo</a></li>
                <li><a href="mainpage.jsp" class="scroll" data-hover="AiZGo主页">AiZGo主页</a></li>
                <li class="active"><a href="contact.jsp" class="scroll" data-hover="联系我们">联系我们</a></li>
            </ul>
            <!--script-->
            <script>
                $("span.menu").click(function(){
                    $(".top-nav ul").slideToggle(500, function(){
                    });
                });
            </script>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--content-->
<div class="contact">
    <div class="container">
        <div class="contact-form">
            <div class="col-md-6 contact-grid">
                <h3>联系信息</h3>
                <form>
                    <p class="your-para">您的姓名:</p>
                    <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                    <p class="your-para">您的邮箱:</p>
                    <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                    <p class="your-para">您的联系方式:</p>
                    <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                    <p class="your-para">您的建议:</p>
                    <textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
                    <div class="send">
                        <input type="submit" value="发送" >
                    </div>
                </form>
            </div>
            <div class="col-md-6 contact-in">
                <h3>AiZGo 信息</h3>
                <p class="sed-para">重庆市沙坪坝区沙正街重庆大学A区AiZGo</p>
                <p class="para1">AiZGo致力于向附近的人们展示商店的活动信息,加入我们可以发布
                    您的商店的活动信息，展示在我们的网站首页，省去发传单的烦恼。加入我们，让我们帮您吸引更多的顾客吧！</p>
                <div class="address-more">
                    <p class="sed-para">电话:  13603944350</p>
                    <p class="sed-para">传真:  132-4509-494</p>
                    <p class="sed-para">邮箱：  <a href="#">AiZGo@163.com</a></p>
                    <p class="sed-para">地址：  重庆市沙坪坝区沙正街重庆大学A区主教1505</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--footer-->
<div class="footer">
    <div class="container">
        <p class="footer-grid">Copyright &copy; 2017.Company name All rights reserved.</p>
    </div>
</div>
</body>
</html>
