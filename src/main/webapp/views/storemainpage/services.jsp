﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>agio</title>
	<script type="text/javascript">
        var attime;
        function clock(){
            var time=new Date();
            attime=time.getHours()+":"+time.getMinutes()+":"+time.getSeconds();
            document.getElementById("clock").value = attime;
        }
        setInterval(clock,1000);
	</script>
<script type="application/x-javascript">
	addEventListener("load", function()
	{
	    setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar()
	{
	    window.scrollTo(0,1);
	}
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
	<div class="banner"> </div>
	<!---->
	<div class="header">
		<div class="header-top">
			<div class="logo">
				<h1><a href="firstpage.jsp">VERO MODA</a></h1>
			</div>
			<div class="top-nav">			
					<span class="menu"> </span>
					<ul>
						<li><a href="firstpage.jsp" class="scroll" data-hover="主页">主页</a></li>
						<li><a href="about.jsp" class="scroll" data-hover="关于">关于</a></li>
						<li class="active"><a href="services.jsp" class="scroll" data-hover="服务">服务</a></li>
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
		<div class="about">
			<div class="container">
				<h3>服 务</h3>
				<div class="service-in">
				<div class="col-sm-4 span_2">
				<a href="#" class="mask">
				<img src="/AgioServer/resources/storemainpage/images/moda.jpg" alt="image" class="img-responsive zoom-img">
				</a>
					<div class="number-top">
					<span class="number">01.</span>
					<div class="number-in">
						<h6><a href="#">优雅 Elegant</a></h6>
						<p>VERO MODA的目标人群是拥有敏锐时尚感的独立、成熟女性，她们想要以具有亲和力的价格购买散发十足潮流感的精致着装。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="border"> </div>
				</div>
				<div class="col-sm-4 span_2">
					<div class="view effect">
						<a href="#" class="mask">
				<img src="/AgioServer/resources/storemainpage/images/moda8.jpg" alt="image" class="img-responsive zoom-img">
				</a>
					</div>
					<div class="number-top">
					<span class="number">02.</span>
					<div class="number-in">
						<h6><a href="#">复古情怀</a></h6>
						<p>玫红色以及古铜金元素的使用则制造出新一季炙手可热的风格流行。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="border"> </div>
				</div>
				<div class="col-sm-4 span_2">
					<div class="view effect">
						<a href="#" class="mask">
				<img src="/AgioServer/resources/storemainpage/images/moda2.jpg" alt="image" class="img-responsive zoom-img">
				</a>
					</div>
					<div class="number-top">
					<span class="number">03.</span>
					<div class="number-in">
						<h6><a href="#">终极幻想</a></h6>
						<p>以黑白灰以及大地色为主，混合局部高饱和亮色，终极幻想系列打造全新的都市流行。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="border"> </div>
				</div>
				<div class="clearfix"> </div>
				</div>
			</div>




			<div class="service-top-in">
				<div class="container">
					<h5 class="best">店铺信息</h5>
					<div class="ser-at">
						<p>店铺星级：</p>
						<p>4</p>
					<p>营业时间：</p>
						<p>7:00-21:30</p>
						<p>当前时间：</p>
						<input type="text" id="clock" size="70"
							   style="color:#6CB6B6;width:100px;border: hidden;font-size: 20px;background-color: #eee"/><p></p>
					<a href="../store.jsp" class="more">更 多...</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

			<div class="service-bottom">
				<div class="container">
					<h3>店铺评论</h3>
					<p><br></p>
					<iframe name="servicecomment" width=100%  height="1300px" marginwidth=0 marginheight=0
							frameborder="no" border="0"  src="../commentstore.jsp" ></iframe>
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