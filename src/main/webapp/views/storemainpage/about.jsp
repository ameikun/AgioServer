<%@ page contentType="text/html; charset=utf-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>agio</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="/AgioServer/resources/storemainpage/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
<link href="/AgioServer/resources/storemainpage/css/style.css" rel='stylesheet' type='text/css' />
<script src="/AgioServer/resources/storemainpage/js/jquery-1.11.1.min.js"></script>
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
						<li class="active"><a href="about.jsp" class="scroll" data-hover="关于">关于</a></li>
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
		<div class="about">
			<div class="container">
				<h3>关于</h3>
				<div class="about-in">
					<div class="col-md-8 in-profile">
						<h4>介 绍</h4>
						<div class="our-grid">
							<div class="view effect our-para">
						<a href="#" class="mask">
				<img src="/AgioServer/resources/storemainpage/images/moda4.jpg" alt="image" class="img-responsive zoom-img">
				</a>						
					</div>
							<div class="our-head">
							<h6 ><a href="#">VERO MODA是丹麦最大时装集团BESTSELLER旗下的知名女装品牌</a></h6>
							<p>自1987年成立以来，VERO MODA就致力于为世界各地的摩登女性打造优雅时装，它代表着当今最前沿的时尚潮流与制衣工艺。时至今日，VERO MODA 的销售网点已遍布45个国家。</p>
							<p>VERO MODA为独立自信的现代女性打造摩登而不失优雅的精致时装，以满足她们生活中多变的着装需求。VERO MODA来自世界各地的时装设计师从全球潮流热地搜寻新一季的设计灵感，在其中注入VERO MODA精神，从而打造出每一季走在时尚前沿而又不失自我个性的魅力女装。</p>
							<p>THE VERO MODA CLUB会员系统打造出VERO MODA世界全新的互动体验——这是一个充满分享乐趣的时装社区。</p>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>


					<div class="col-md-4 in-profile">
					<h4>近期活动</h4>
						<div class="col-in-about">
							<script type="text/javascript">
                                if('${storeActivity.sactivityTitle}'==""||'${storeActivity.sactivityTitle}'==null)
                                {
                                    // alert("添加活动失败！活动主题不能为空");
                                }
                                else{
                                    document.write("<span class='in-sed'>新</span>");
                                    alert("添加活动成功！");
                                }
							</script>
							<div class="left-sit">
								<h6><a href="#">${storeActivity.sactivityTitle}</a></h6>
								<p>${storeActivity.sactivityInf}</p>
								<p>${storeActivity.acTime}</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					<div class="col-in-about">
						<span class="in-sed">1</span>
						<div class="left-sit">
							<h6><a href="#">新品专区满500用券减50</a></h6>
							<p>使用条件：500享用,买即送50元优惠券</p>
							<p>活动时间：2017/05/25 - 2017/06/05</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-in-about">
						<span class="in-sed">2</span>
						<div class="left-sit">
							<h6><a href="#">春装满1000减100</a></h6>
							<p>使用条件：店内所有春装</p>
							<p>活动时间：2017/04/05 - 2017/05/03</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			<div class="about-bottom">
				<div class="col-sm-7 our-mission">
					<h4>添加最新活动信息</h4>
					<form role="form" action="/AgioServer/views/storemainpage/addStoreActivity" method="post" class="">
						<div class="">
							<p>活动标题</p>
							<input class="form-control" placeholder="店铺活动标题" name="sactivityTitle" type="text">
							<p>活动内容</p>
							<textarea class="form-control" placeholder="店铺活动信息" rows="5" name="sactivityInf" typeof="text"></textarea>
							<!--<input class="form-control" placeholder="店铺活动信息" name="sactivityInf" type="text">
							-->
							<p>活动时间</p>
							<input class="form-control" placeholder="活动时间" name="acTime" type="text">
							<p></p>
							<button type="submit" style="font-size: 1.3em;background:#6CB6B6;padding: 0.6em 1.7em;text-align: center;color: #fff;border: none;
	outline:none;-webkit-appearance: none;">添加店铺活动</button>
						</div>
					</form>
				</div>
				<div class="col-sm-5 about_img">
				<div class="view effect">
				<a href="#" class="mask">
				<img src="/AgioServer/resources/storemainpage/images/moda8.jpg" alt="image" class="img-responsive zoom-img">
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