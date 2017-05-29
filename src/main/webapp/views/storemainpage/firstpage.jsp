<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>agio</title>
<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); }
</script>
<link href="/AgioServer/resources/storemainpage/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/AgioServer/resources/storemainpage/css/style.css" rel='stylesheet' type='text/css' />
<script src="/AgioServer/resources/storemainpage/js/jquery-1.11.1.min.js"></script>

<script src="/AgioServer/resources/storemainpage/js/responsiveslides.min.js"></script>
	<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
</head>
<body> 
<!--header-->
<!--banner-->
	<div class="slider">
	    <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li>
	          <img src="/AgioServer/resources/storemainpage/images/banner2.jpg" alt=""/>
	        </li>
	        <li>
	          <img src="/AgioServer/resources/storemainpage/images/banner1.jpg" alt=""/>
	        </li>
	        <li>
	          <img src="/AgioServer/resources/storemainpage/images/moda1.jpg" alt=""/>
	        </li>
	      </ul>
	  </div>
	  </div>
	<!---->
	<div class="header">
		<div class="header-top">
			<div class="logo">
			   <h1><a href="firstpage.jsp">VERO MODA</a></h1>
			</div>
			<div class="top-nav">			
					<span class="menu"> </span>
					<ul>
						<li class="active"><a href="firstpage.jsp" class="scroll" >主页</a></li>
						<li><a href="about.jsp" class="scroll" data-hover="关于">关于</a></li>
						<li><a href="services.jsp" class="scroll" data-hover="服务">服务</a></li>
						<li><a href="../mainpage.jsp" class="scroll" data-hover="AiZGo主页">AiZGo主页</a></li>
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
		<div class="grid_1">
			<div class="container">
				<h2>What's Special for Today</h2>
				<p>具有亲和力 Accessible 乐观积极 Upbeat 魅力四射 Ambitious 独一无二 Unique</p>
			</div>
		</div>

		<!--<div class="box_1">
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/3.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/3.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/3.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="clearfix"> </div>
		</div>-->

		<div class="content-news">
			<div class="container">
				<h3 class="m_1"><span>NEW</span>S</h3>
				<div class="news-left">			
					<div class="col-md-6 col-news-right">

					<div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc1.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">9</span>
							<span class="month">May</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/moda5.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">28</span>
							<span class="month">May</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/moda6.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">15</span>
							<span class="month">Jun</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="clearfix"> </div>
					</div>

					<div class="col-md-6 col-news">

					<div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">10</span>
							<span class="month">Jun</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>
				
				<div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/moda7.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">16</span>
							<span class="month">Aug</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

			    <div class="col-news-top">
					<a href="about.jsp" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc2.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">8</span>
							<span class="month">March</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>
				
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>

		<!----->
		<div class="content-team">
			<div class="container">
				<h3 class="m_1"><span>Our Star Product</span></h3>
				<div class="team-left">
					<div class="col-sm-3 team-top">
					<a href="services.jsp"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/m1.jpg" alt="" /></a>
						<h6>雪纺上衣</h6>
						<p>今年流行的一字领搭配可爱的喇叭袖，性感可爱的风格，百褶雪纺知性的红色</p>
					</div>
					<div class="col-sm-3 team-top team-in">
						<a href="services.jsp"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/m2.jpg" alt="" /></a>
						<h6>雪纺连衣裙</h6>
						<p>都市风连衣裙，搭配今年流行的碎花设计</p>
					</div>
					<div class="col-sm-3 team-top">
						<a href="services.jsp"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/m3.jpg" alt="" /></a>
						<h6>蕾丝连衣裙</h6>
						<p>纯色简约风</p>
					</div>
					<div class="col-sm-3 team-top top-team">
						<a href="services.jsp"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/m4.jpg" alt="" /></a>
						<h6>短袖</h6>
						<p>白色甜美的上衣搭配黑色百搭连衣裙</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
</body>
</html>