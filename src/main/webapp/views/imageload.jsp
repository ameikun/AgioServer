<%@ page contentType="text/html; charset=utf-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>imageload</title>
    <!--mobile apps-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/AgioServer/resources/common/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/AgioServer/resources/imageload/css/personal.css" type="text/css" rel="stylesheet" media="all">
    <link href="/AgioServer/resources/imageload/css/head-image.css" type="text/css" rel="stylesheet" media="all">
    <!--js-->
    <script src="/AgioServer/resources/common/js/jquery.min.js"></script>
    <!--start-smooth-scrolling-->
    <script type="text/javascript" src="/AgioServer/resources/imageload/js/move-top.js"></script>
    <script type="text/javascript" src="/AgioServer/resources/common/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!--//end-smooth-scrolling-->
</head>
<body>
<jsp:include page="/views/header.jsp"/>
<!--banner-->
<div id="home" class="banner">
    <div class="banner-info">
        <div class="container">
            <div class="col-md-4 header-left">
                <a data-toggle="modal" data-target="#upload-head">
                    <img src="${user.profileImageUrl}" alt=""/>
                </a>
            </div>
            <div class="col-md-8 header-right">
                <h1>用户名：${user.nickname}</h1>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//banner-->


<!-- upload image modal start-->
<!-- 模态框示例（Modal） -->
<div class="modal fade" id="upload-head" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1">
                    上传图片
                </h4>
            </div>
            <div class="modal-body">
                <form action="/AgioServer/user/updateHead" id="form-head-image" method="post" enctype="multipart/form-data">
                    <div class="container">
                        <div class="imageBox">
                            <div class="thumbBox"></div>
                            <div class="spinner" style="display: none">Loading...</div>
                        </div>
                        <div class="action">
                            <div class="new-contentarea tc">
                                <a href="javascript:void(0)" class="upload-img">
                                    <label for="get-file">选择图像</label>
                                </a>
                                <input type="file" class="" name="file" id="get-file" />
                                <input name="userID" value="${user.userID}" style="display:none"/>
                            </div>
                            <input type="button" id="btnCommit"  class="Btnsty_peyton" value="上传" data-dismiss="modal" onclick="javascript:uploadHead()"/>
                            <input type="button" id="btnCrop"  class="Btnsty_peyton" value="裁切"/>
                            <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+" style="display:none"/>
                            <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" style="display:none"/>
                        </div>
                        <div class="cropped"></div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</form>
<!-- modal end-->
<!--smooth-scrolling-of-move-up-->
<script type="text/javascript">
    $(document).ready(function () {
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<script>
    window.onload = function () {
        $("#personal_li").addClass('active');
    }
</script>
<!--//smooth-scrolling-of-move-up-->
<!-- Bootstrap core JavaScript
================================================== -->
<!--
<script src="/AgioServer/resources/common/js/bootstrap.min.js"></script>-->
<script src="/AgioServer/resources/common/js/jquery.form.js"></script>
<script src="/AgioServer/resources/imageload/js/userinfo.js"></script>
<script src="/AgioServer/resources/imageload/js/cropbox.js"></script>
<script src="/AgioServer/resources/storemainpage/js/upload-image.js"></script>
</body>
</html>