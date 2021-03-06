<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/23
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>agio</title>
    <link href="/AgioServer/resources/mainpage/css/mainpage.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/views/header.jsp"/>
<div class="midhead">
    <iframe name="midsearch" width=100% marginwidth=0 marginheight=0
            frameborder="no" border="0"  src="midsearch.jsp" ></iframe>
</div>

<div class="header-wrap">
    <div class="navwrap">
        <div id="nav">
            <div class="navbar clearfix">
                <a class="navbt" href="baidumap.jsp"><span>附近地图</span></a>
                <a class="current" href="mainpage.jsp">首页</a>
                <a href="#">餐饮美食</a>
                <a href="#">休闲娱乐</a>
                <a href="#">旅游住宿</a>
                <a href="#">附近服务</a>
                <a href="#">学习教育</a>
                <a href="#">服饰商品</a>
            </div>
            <div class="pros subpage">
                <h2>全部分类</h2>
                <ul class="prosul clearfix" id="proinfo">
                    <li class="food">
                        <i>&gt;</i>
                        <a class="ti" href="#">美食</a>
                        <a class="hot" href="#">地方菜</a>
                        <a href="#">火锅</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(117)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">火锅(17)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">烧烤(16)</a></em></span>
                            <span><em><a href="#">西餐(9)</a></em></span>
                            <span><em><a href="#">海鲜(37)</a></em></span>
                            <span><em><a href="#">地方菜(5)</a></em></span>
                            <span><em><a href="#">日韩料理(2)</a></em></span>
                            <span><em><a href="#">快餐(2)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">蛋糕(9)</a></em></span>
                            <span><em><a href="#">其他(7)</a></em></span>
                            <span><em><a href="#">下午茶(5)</a></em></span>
                            <span><em><a href="#">咖啡(8)</a></em></span>
                        </div>
                    </li>
                    <li class="enjoy">
                        <i>&gt;</i>
                        <a class="ti" href="#">休闲</a>
                        <a class="hot" href="#">电影</a>
                        <a href="#">KTV</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(663)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">电影(18)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">KTV(8)</a></em></span>
                            <span><em><a href="#">运动健身(95)</a></em></span>
                            <span><em><a href="#">游乐电玩(48)</a></em></span>
                            <span><em><a href="#">展览演出(13)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">足疗按摩(8)</a></em></span>
                            <span><em><a href="#">洗浴(11)</a></em></span>
                            <span><em><a href="#">其他(29)</a></em></span>
                            <span><em><a href="#">采摘(2)</a></em></span>
                            <span><em><a href="#">滑雪(4)</a></em></span>
                            <span><em><a href="#">温泉(427)</a></em></span>
                        </div>
                    </li>
                    <li class="travel">
                        <i>&gt;</i>
                        <a class="ti" href="#">旅游</a>
                        <a class="hot" href="#">酒店</a>
                        <a href="#">旅游</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(136)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">酒店(90)</a></em></span>
                            <span><em><a href="#">旅游(177)</a></em></span>
                            <span><em><a href="#">景点公园(93)</a></em></span>
                            <span><em><a href="#">其他(18)</a></em></span>
                        </div>
                    </li>
                    <li class="life">
                        <i>&gt;</i>
                        <a class="ti" href="#">生活</a>
                        <a href="#">婚纱摄影</a>
                        <a href="#">写真</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(333)</a></em></span>
                            <span><em><a href="#">写真(9)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">婚纱摄影(212)</a></em></span>
                            <span><em><a href="#">儿童摄影(1)</a></em></span>
                            <span><em><a href="#">汽车养护(3)</a></em></span>
                            <span><em><a href="#">美容美甲(91)</a></em></span>
                            <span><em><a href="#">体检(8)</a></em></span>
                            <span><em><a href="#">口腔(1)</a></em></span>
                            <span><em><a href="#">其他(8)</a></em></span>
                        </div>
                    </li>
                    <li class="women">
                        <i>&gt;</i>
                        <a class="ti" href="#">教育</a>
                        <a href="#">家教</a>
                        <a href="#">补习班</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(14)</a></em></span>
                            <span><em class="morehot"><a class="morehot" href="#">家教(7)</a></em></span>
                            <span><em><a href="#">音乐补习(3)</a></em></span>
                            <span><em><a href="#">跆拳道(4)</a></em></span>
                        </div>
                    </li>
                    <li class="goods bd-solid">
                        <i>&gt;</i>
                        <a class="ti" href="#">商品</a>
                        <a href="#">服装</a>
                        <a href="#">鞋靴</a>
                        <div class="prosmore hide">
                            <span><em><a href="#">全部(1123)</a> </em></span>
                            <span><em class="morehot"><a class="morehot" href="#">服装(347)</a> </em></span>
                            <span><em><a href="#">生活家居(144)</a> </em></span>
                            <span><em><a href="#">食品饮料(10)</a> </em></span>
                            <span><em><a href="#">化妆品(127)</a> </em></span>
                            <span><em><a href="#">箱包(76)</a> </em></span>
                            <span><em><a href="#">家用电器(37)</a> </em></span>
                            <span><em><a href="#">手机数码(36)</a> </em></span>
                            <span><em><a href="#">鞋靴(116)</a> </em></span>
                            <span><em><a href="#">饰品(45)</a> </em></span>
                            <span><em><a href="#">手表(14)</a> </em></span>
                            <span><em><a href="#">母婴用品(36)</a> </em></span>
                            <span><em><a href="#">玩具(77)</a> </em></span>
                            <span><em><a href="#">抽奖(7)</a> </em></span>
                            <span><em><a href="#">礼品(197)</a> </em></span>
                            <span><em><a href="#">其他(49)</a> </em></span>
                        </div>
                    </li>
                    <li class="hotareas nochild last">
                        <h2>热门搜索</h2>
                        <br />
                        <a class="mhs" href="#">美食</a>
                        <a class="mhs" href="#">游泳</a>
                        <a class="mhs" href="#">蛋糕</a>
                        <a class="mhs" href="#">电影</a>
                        <a class="mhs" href="#">眼镜</a>
                        <a class="mhs" href="#">自助餐</a>
                        <a class="mhs" href="#">酒吧</a>
                        <a class="mhs" href="#">美甲</a>
                        <a class="mhs" href="#">酒店</a>
                        <a class="mhs" href="#">粽子</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script src="/AgioServer/resources/mainpage/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    (function(){
        var $subblock = $(".subpage"), $head=$subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul.find("li"), inter=false;
        $head.click(function(e){
            e.stopPropagation();
            if(!inter){
                $ul.show();
            }else{
                $ul.hide();
            }
            inter=!inter;
        });

        $ul.click(function(event){
            event.stopPropagation();
        });

        $(document).click(function(){
            $ul.hide();
            inter=!inter;
        });

        $lis.hover(function(){
            if(!$(this).hasClass('nochild')){
                $(this).addClass("prosahover");
                $(this).find(".prosmore").removeClass('hide');
            }
        },function(){
            if(!$(this).hasClass('nochild')){
                if($(this).hasClass("prosahover")){
                    $(this).removeClass("prosahover");
                }
                $(this).find(".prosmore").addClass('hide');
            }
        });

    })();
</script>

<div style="text-align:center;background-color: #fdfff0">
    <jsp:include page="/views/mainfirstpage.jsp"/>
    <!--<iframe name="mainview" width=100% height=100% marginwidth=0 marginheight=0
            frameborder="no" border="0"  src="mainfirstpage.jsp" ></iframe>-->
</div>

<script src="/AgioServer/resources/mainpage/js/mainpage.js"></script>
<jsp:include page="/views/footer.jsp"/>
</body>
</html>
