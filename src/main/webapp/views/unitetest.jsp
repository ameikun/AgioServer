<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/15
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统一暂时页面</title>
    <script type="text/javascript">
        var attime;
        function clock(){
            var time=new Date();
            attime=time.getHours()+":"+time.getMinutes()+":"+time.getSeconds();
            document.getElementById("clock").value = attime;
        }
        setInterval(clock,1000);
    </script>
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form role="form" action="/AgioServer/unit/addUserPoint" method="post" class="">
    <div class="">
        <input class="" placeholder="积分" name="point" type="int">
        <input class="" placeholder="积分说明" name="pointReason" type="text">
        <button type="submit" class="">添加积分</button>
    </div>
</form>

<form role="form" action="/AgioServer/unit/addCoupon" method="post" class="">
    <div class="">
        <input class="" placeholder="优惠额度" name="couponLimit" type="int">
        <input class="" placeholder="优惠原因" name="couponReason" type="text">
        <input class="" placeholder="过期时间" name="expireDate" type="int">
        <button type="submit" class="">添加优惠券</button>
    </div>
</form>

<form role="form" action="/AgioServer/unit/addStoreActivity" method="post" class="">
    <div class="">
        <input class="" placeholder="店铺活动标题" name="sactivityTitle" type="text">
        <input class="" placeholder="店铺活动信息" name="sactivityInf" type="text">
        <button type="submit" class="">添加店铺活动</button>
    </div>
</form>

<input type="text" id="clock" size="50" style="color:#0094ff;width:60px";  />

</body>
</html>
