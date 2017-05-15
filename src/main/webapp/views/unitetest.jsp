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
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form role="form" action="/AgioServer/unit/addUserPoint" method="post" class="">
    <div class="">
        <input class="" placeholder="积分" name="point" type="int">
        <input class="" placeholder="积分说明" name="pointReason" type="text">
        <button type="submit" class="">添加</button>
    </div>
</form>

<form role="form" action="/AgioServer" method="post" class="">
    <div class="">
        <input class="" placeholder="" name="" type="text">
        <input class="" placeholder="" name="" type="text">
        <input class="" placeholder="" name="" type="long">
        <button type="submit" class="">添加</button>
    </div>
</form>

</body>
</html>
