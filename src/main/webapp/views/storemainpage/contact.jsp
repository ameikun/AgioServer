<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>agio</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="/AgioServer/resources/storemainpage/css/bootstrap.css" rel='stylesheet' type='text/css' />
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
						<li><a href="firstpage.jsp" class="scroll" >主页</a></li>
						<li><a href="about.jsp" class="scroll" data-hover="关于">关于</a></li>
						<li><a href="services.jsp" class="scroll" data-hover="服务">服务</a></li>
						<li><a href="../mainpage.jsp" class="scroll" data-hover="AiZGo主页">AiZGo主页</a></li>
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
				<h2>位置</h2>
			<div class="map">
				<iframe src="../baidumap.jsp"></iframe>
			</div>
			<div class="contact-form">
				<div class="col-md-6 contact-grid">
					<h3>联系信息</h3>
					<form>
						<p class="your-para">Your account:</p>
						<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<p class="your-para">Your mail:</p>
						<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<p class="your-para">Your phone number:</p>
						<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<p class="your-para">Your message:</p>
						<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
						<div class="send">
							<input type="submit" value="Send" >
						</div>
					</form>
				</div>
				<div class="col-md-6 contact-in">
					<h3>contact information</h3>
					<p class="sed-para">沙坪坝区三峡广场步行街新世纪百货凯瑞商都2楼(Vero Moda新世纪百货凯瑞商都专柜)</p>
					<p class="para1">VERO MODA源自欧洲经典女装品牌, 致力于为世界各地的摩登女性打造优雅时装,
						它代表着当今最前沿的时尚潮流与制衣工艺。至今已在中国开设了1800多家店铺。
						这是三峡广场的商业文化街，被中宣部、国内贸易部等6部委命名为“全国百城万店无假货示范街”，又是重庆长江三峡文明长廊建设示范点。</p>					<div class="more-address">
						
						<div class="address-more">
							<p>电话:  15163944350</p><br>
							<p>传真:  190-4509-494</p><br>
							<p>邮箱：  <a href="#">amei@163.com</a></p>
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