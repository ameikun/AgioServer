<%--
  Created by IntelliJ IDEA.
  User: amei
  Date: 16-11-20
  Time: 下午1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="/AgioServer/resources/header/css/header.css" rel="stylesheet" type="text/css" media="all">
<link href="/AgioServer/resources/modal/css/component.css"  rel="stylesheet" type="text/css" />

<!--start-header-->
<div class="header" id="home">
    <div class="container">
        <div class="head">
            <div class="logo">
                <script type="text/javascript">
                    function getCookie(c_name)
                    {
                        if (document.cookie.length>0)
                        {
                            c_start=document.cookie.indexOf(c_name + "=")
                            if (c_start!=-1)
                            {
                                c_start=c_start + c_name.length+1
                                c_end=document.cookie.indexOf(";",c_start)
                                if (c_end==-1) c_end=document.cookie.length
                                return unescape(document.cookie.substring(c_start,c_end))
                            }
                        }
                        return ""
                    }
                    var welcome = "欢迎你！";
                    var name = getCookie("agio-account");
                    if(name==""||name==null)
                    {
                        document.write("&nbsp;&nbsp;&nbsp");
                        document.write("<a class='logo' href='login.jsp'>请登录</a>");
                    }
                    else{
                        document.write("&nbsp;&nbsp;&nbsp");
                        document.write(welcome);
                        document.write(name);
                    }
                </script>
            </div>
            <div class="navigation">
                <span class="menu"></span>
                <ul class="navig">
                    <li><a id = "home_li" href="mainpage.jsp" class="hvr-bounce-to-bottom">主页</a></li>
                    <li><a id = "register_li" href="register.jsp" class="hvr-bounce-to-bottom">注册</a></li>
                    <li><a id = "plan_li" href="usercollect.jsp"  class="hvr-bounce-to-bottom">收藏夹</a></li>
                    <li><a id = "personal_li" href="personmainpage.jsp" class="hvr-bounce-to-bottom">个人中心</a></li>
                    <li><a id = "contact_li" href="contact.jsp" class="hvr-bounce-to-bottom">联系我们</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<script src="/AgioServer/resources/common/js/jquery.min.js"></script>
<script src="/AgioServer/resources/common/js/bootstrap.min.js"></script>
<script src="/AgioServer/resources/header/js/header.js"></script>


