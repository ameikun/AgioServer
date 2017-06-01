<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/15
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>agio</title>
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
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
                <li class="active"><a href="store.jsp" class="scroll" data-hover="加入AiZGo">加入AiZGo</a></li>
                <li><a href="mainpage.jsp" class="scroll" data-hover="AiZGo主页">AiZGo主页</a></li>
                <li><a href="contact.jsp" class="scroll" data-hover="联系我们">联系我们</a></li>
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
<div class="content">
    <div class="about">
        <div class="container">
            <div class="about-bottom">
                <div class="col-sm-7 our-mission">
                    <h3>加入AiZGo</h3>
                    <form role="form" action="/AgioServer/views/addStore" method="post" class="">
                        <div class="">
                            <p>店铺名称</p>
                            <input class="form-control" placeholder="店铺名称" name="shopName" type="text">
                            <p>店铺地址</p>
                            <input class="form-control" placeholder="店铺地址" name="shopAddress" type="text">
                            <p>营业开始时间</p>
                            <input class="form-control" placeholder="营业开始时间" name="startTime" type="text">
                            <p>营业结束时间</p>
                            <input class="form-control" placeholder="营业结束时间" name="endTime" type="text">
                            <br>
                            <button type="submit" style="font-size: 1.3em;background:#6CB6B6;padding: 0.6em 1.7em;text-align: center;color: #fff;border: none;
	outline:none;-webkit-appearance: none;">添加</button>
                        </div>
                    </form>
                </div>
                <div class="col-sm-5 about_img">
                    <div class="view effect">
                        <a href="#" class="mask">
                            <img src="/AgioServer/resources/storemainpage/images/joinus.jpg" alt="image" class="img-responsive zoom-img">
                        </a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
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
