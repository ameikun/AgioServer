<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/15
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加店铺</title>
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form role="form" action="/AgioServer/shop/addStore" method="post" class="">
    <div class="">
        <input class="form-control" placeholder="店铺名称" name="shopName" type="text">
        <input class="form-control" placeholder="店铺地址" name="shopAddress" type="text">
        <input class="form-control" placeholder="营业开始时间" name="startTime" type="long">
        <input class="form-control" placeholder="营业结束时间" name="endTime" type="long">
        <button type="submit" class="">添加</button>
    </div>
</form>

</body>
</html>
