<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/25
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>agio</title>
    <link href="/AgioServer/resources/personpage/css/personstyle.css" rel='stylesheet' type='text/css' />
    <link href="/AgioServer/resources/personpage/css/conponent.css" rel='stylesheet' type='text/css' />
    <link href="/AgioServer/resources/personpage/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<header role="header">
    <div class="container">
        <nav role="header-nav" class="navy">
            <ul>
                <li><a href="mainpage.jsp" title="AiZGomainpage">AiZGo主页</a></li>
                <li><a href="store.jsp" title="joinus">加入AiZGo</a></li>
                <li class="nav-active"><a href="#" title="personcenter">个人中心</a></li>
                <li><a href="#" title="exit">退出</a></li>
            </ul>
        </nav>
    </div>
</header>

<main role="main-inner-wrapper" class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
            <article role="pge-title-content" class="blog-header">
                <header>
                    <h2><span><img src="../resources/mainpage/images/logo2.png"></span>蛐蛐</h2>
                </header>
                <p>优惠券：0张</p>
            </article>
            <ul class="grid-lod effect-2" id="">
                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>24</span> May 2017
                                </div>
                                <img src="../resources/personpage/images/yonghuiz.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            永辉超市端午节粽子热卖，满300减50！千山万水“粽”是情！
                        </article>
                    </section>
                </li>

                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>20</span> May 2017
                                </div>
                                <img src="/AgioServer/resources/mainpage/images/contentmid/moda1.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            VERO MODA专为成熟、时尚的都市女性设计。
                            其服装风格上典雅、性感，材质上展现出女性的优雅和精致。
                        </article>
                    </section>
                </li>

                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>01</span> July 2017</div>
                                <img src="/AgioServer/resources/mainpage/images/contentmid/neweast1.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            新东方雅思端午特惠，团报优惠，5人减100！
                        </article>
                    </section>
                </li>
            </ul>
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <ul class="grid-lod effect-2" id="grid">
                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>03</span> Jun 2017
                                </div>
                                <img src="/AgioServer/resources/mainpage/images/contentmid/b4.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            六.一儿童节活动，第二杯紫米露半价，全部饮品9折起，活动持续一周。
                            酸奶第二杯半价，更有买五送一活动！
                        </article>
                    </section>

                </li>
                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>20</span> May 2017
                                </div>
                                <img src="/AgioServer/resources/mainpage/images/contentmid/yichun3.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            以纯端午狂欢节，全场5折起，购物满199元减20元，满299元减50元。
                            活动时间截止到2017年6月10日。</p>

                        </article>
                    </section>

                </li>

                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>22</span> May 2017
                                </div>
                                <img src="../resources/personpage/images/blog-4.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                       <article>
                            凯德广场全场2折起，部分化妆品低至3折！
                        </article>
                    </section>
                </li>

                <li>
                    <section class="blog-content">
                        <a href="javascript:void(0)">
                            <figure>
                                <div class="post-date">
                                    <span>24</span> July 2017
                                </div>
                                <img src="/AgioServer/resources/mainpage/images/contentmid/huoguo.jpg" alt="" class="img-responsive"/>
                            </figure>
                        </a>
                        <article>
                            仅售88元，价值100元代金券！
                            可叠加使用！节假日通用，店内提供免费WiFi，免费WiFi！满200打八折
                        </article>
                    </section>
                </li>
            </ul>
        </div>
    </div>
</main>
<!--footer-->
<jsp:include page="/views/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/AgioServer/resources/personpage/js/jquery.min.js" type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/nav.js" type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/custom.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/AgioServer/resources/personpage/js/effects/masonry.pkgd.min.js"  type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/effects/imagesloaded.js"  type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/effects/classie.js"  type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/effects/AnimOnScroll.js"  type="text/javascript"></script>
<script src="/AgioServer/resources/personpage/js/effects/modernizr.custom.js"></script>
</body>
</html>
