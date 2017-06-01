<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/15
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>agio统一暂时页面</title>
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
        <input class="" placeholder="过期时间" name="expireDate" type="text">
        <button type="submit" class="">添加优惠券</button>
    </div>
</form>


</body>
</html>
