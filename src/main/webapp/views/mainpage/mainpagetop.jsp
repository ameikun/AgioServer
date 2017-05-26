<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/26
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mainpagetop</title>
    <link href="/AgioServer/resources/mainpage/css/mainpagetop.css" rel="stylesheet">
    <script type="text/javascript" src="/AgioServer/resources/mainfirstpage/js/jquery-1.9.1.js"></script>
</head>
<body>
<div id="mainpagetop" class="home-subjects-v2">
    <ul>
        <li>
            <a>
                <img src="http://gtms01.alicdn.com/tps/i1/T1Lvt3Fv4kXXbA5QAK-195-120.jpg_Q90.jpg">
                <div class="info">
                    <h3 style="color:#f62368">凯德广场</h3>
                    <p>端午节周年庆</p>
                    <p class="price"><strong>1</strong><i>折起</i></p>
                    <p class="more">进入专题抢购 &gt; </p>
                </div>
                <s class="line"></s>
                <i class="mask"></i>
            </a>
        </li>
        <li class="big">
            <a>
                <img src="http://gtms01.alicdn.com/tps/i1/T1qxGLFsVbXXbA5QAK-195-120.jpg_Q90.jpg">
                <div class="info">
                    <h3 style="color:#ff578a">重百Baby购</h3>
                    <p>六.一宝宝该换装了，新品抢购</p>
                    <p class="price"><strong>2.5</strong><i>折起</i></p>
                    <p class="more">进入专题抢购 &gt; </p>
                </div>
                <s class="line"></s>    <i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="http://gtms02.alicdn.com/tps/i2/T1KOSNFxXaXXbA5QAK-195-120.jpg_Q90.jpg">
                <div class="info">
                    <h3 style="color:#6d3fa7">ONLY时装团</h3>
                    <p>时尚夏装，清新小潮搭配</p>
                    <p class="price"><strong>1</strong><i>折起</i></p>
                    <p class="more">进入专题抢购 &gt; </p>
                </div>
                <s class="line"></s>    <i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="http://gtms04.alicdn.com/tps/i4/T1CCeIFrVbXXbA5QAK-195-120.jpg_Q90.jpg">
                <div class="info">
                    <h3 style="color:#d61939">永辉超市</h3>
                    <p>补血养颜 就这么简单</p>
                    <p class="price"><strong>2.6</strong><i>折起</i></p>
                    <p class="more">进入专题抢购 &gt; </p>
                </div>
                <s class="line"></s><i class="mask"></i>
            </a>
        </li>
        <li>
            <a>
                <img src="http://gtms01.alicdn.com/tps/i1/T1jmKJFyJbXXbA5QAK-195-120.jpg_Q90.jpg">
                <div class="info">
                    <h3 style="color:#6f9400">沃尔玛生活</h3>
                    <p>最纯正的东北香米</p>
                    <p class="price"><strong>5</strong><i>折起</i></p>
                    <p class="more">进入专题抢购 &gt; </p>
                </div>
                <i class="mask"></i>
            </a>
        </li>
    </ul>
</div>
<script type="text/javascript">
    function mouseover(e){
        var list = $('#mainpagetop li');
        var target = $(e.target).parents('li');

        list.removeClass('big');
        target.addClass('big');
    }

    (function(){
        var outer = $('#mainpagetop');
        outer.find('li').on('mouseover', mouseover);
    })()

</script>
</body>
</html>
