<!DOCTYPE html>
<html>
<head>
<title>agio</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	          <img src="/AgioServer/resources/storemainpage/images/banner.jpg" alt=""/>
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
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
			</div>
		</div>

		<div class="box_1">
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/1.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/2.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-xs-4 span_1">
				<img src="/AgioServer/resources/storemainpage/images/3.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="clearfix"> </div>
		</div>

		<div class="content-news">
			<div class="container">
				<h3 class="m_1"><span>NEW</span>S</h3>
				<div class="news-left">			
					<div class="col-md-6 col-news-right">

					<div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc2.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">15</span>
							<span class="month">Feb</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">15</span>
							<span class="month">Feb</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc1.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">15</span>
							<span class="month">Feb</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

					<div class="clearfix"> </div>
					</div>

					<div class="col-md-6 col-news">

					<div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">10</span>
							<span class="month">January</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>
				
				<div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc1.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">15</span>
							<span class="month">Feb</span>
						  </label>
						</div>
					</a>
                  <div class="clearfix"></div>
                </div>

			    <div class="col-news-top">
					<a href="#" class="date-in">
						<img class="img-responsive mix-in" src="/AgioServer/resources/storemainpage/images/pc2.jpg" alt="">
						<div class="month-in">
						  <label>
							<span class="day">08</span>
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
					<a href="#"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/p1.jpg" alt="" /></a>
						<h6>Contrary to popular</h6>
						<p>But I must explain to you how all this mistaken idea of denouncing</p>
					</div>
					<div class="col-sm-3 team-top team-in">
						<a href="#"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/p2.jpg" alt="" /></a>
						<h6>Sed ut perspiciatis</h6>
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui bland</p>
					</div>
					<div class="col-sm-3 team-top">
						<a href="#"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/p3.jpg" alt="" /></a>
						<h6>praising pain</h6>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</p>
					</div>
					<div class="col-sm-3 team-top top-team">
						<a href="#"><img class="img-responsive" src="/AgioServer/resources/storemainpage/images/p4.jpg" alt="" /></a>
						<h6>corrupti quos</h6>
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
</body>
</html>