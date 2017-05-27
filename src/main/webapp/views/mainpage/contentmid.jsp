<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/26
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mainpagecontentmid</title>
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="/AgioServer/resources/mainpage/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <script src="/AgioServer/resources/mainpage/js/jquery-1.11.0.min.js"></script>
    <script type="application/x-javascript">
        addEventListener("load", function()
    { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
</head>
<body>
<div class="content">
    <div class="container">
        <div class="blog-section">
            <div class="blog-post-grids">
                <div class="col-md-4 blog-posts">
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b1.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Phasellus in tincidunt velit. Etiam fermentum fringilla tristique. Aenean posuere aliquam interdum. Sed dignissim turpis eget leo ultricies ultricies. Sed et felis leo, eget dapibus massa.</p>
                    </div>
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b2.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Fusce placerat bibendum augue, non posuere lorem facilisis sit amet. Mauris malesuada nunc eget est pellentesque sit amet aliquet dolor pharetra. Integer placerat elit quis nisl dignissim non consectetur quam vestibulum.</p>
                    </div>
                </div>
                <div class="col-md-4 blog-posts">
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b3.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Phasellus in tincidunt velit. Etiam fermentum fringilla tristique. Aenean posuere aliquam interdum. Sed dignissim turpis eget leo ultricies ultricies. </p>
                    </div>
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b1.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Phasellus in tincidunt velit. Etiam fermentum fringilla tristique. Aenean posuere aliquam interdum. Sed dignissim turpis eget leo ultricies ultricies. Sed et felis leo, eget dapibus massa.</p>
                    </div>
                </div>
                <div class="col-md-4 blog-posts span_66">
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b2.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Fusce placerat bibendum augue, non posuere lorem facilisis sit amet.</p>
                    </div>
                    <div class="blog-post">
                        <a href="single.html"><img src="/AgioServer/resources/mainpage/images/contentmid/b3.jpg"></a>
                        <a href="single.html" class="blog-title">This is blog post title</a>
                        <p class="sub_head">Posted by <a href="#">Admin</a> on 12/04/2014</p>
                        <span></span>
                        <p>Phasellus in tincidunt velit. Etiam fermentum fringilla tristique.</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
