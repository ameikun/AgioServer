<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/25
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mainfirstpage</title>
    <link href="/AgioServer/resources/mainfirstpage/css/mainfirstpage.css" rel="stylesheet">
    <script src="/AgioServer/resources/mainfirstpage/js/mainfirstpage.js"></script>
</head>
<body>
<div style="height: 100%">
<div class="contenttop" id="mainpagetop">
    <iframe name="mainviewtop" width=72%  marginwidth=0 marginheight=0
            frameborder="no" border="0"  src="mainpage/mainpagetop.jsp" ></iframe>
</div>
<div class="content" id="mainpagecontent">
    <div class="contentleft" id="mainpageleft">竞价广告区</div>
    <div class="contentmid" id="mainpagemid">
        <iframe name="mainviewmid" width=100%  height="100%" marginwidth=0 marginheight=0
                frameborder="no" border="0"  src="mainpage/contentmid.jsp" ></iframe>
    </div>
   <div class="contentright" id="mainpageright">用户喜欢（通过算法大数据分析）广告区</div>
</div>

<div class="tipCon" id="tipCon">
    <div class="clickMe" id="clickMe">是不是你的菜？
        <a href="javascript:void(0);" id="closeBtn"></a>
    </div>
    <div class="showPic" id="showPic">
        <a href="store.jsp"> <img src="../resources/mainfirstpage/images/fruit1.gif" /></a>
    </div>
</div>
</div>
</body>
</html>
