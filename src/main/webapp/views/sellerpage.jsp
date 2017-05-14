<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/12
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卖家页面</title>
    <link rel="stylesheet" href="/AgioServer/resources/sellerpage/css/sellerpage.css">
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form role="form" action="/AgioServer/store/addGoods" method="post" class="">
    <div class="pageright">
        <input class="form-control" placeholder="商品名称" name="goodName" type="text">
        <input class="form-control" placeholder="商品价格" name="price" type="text">
        <input class="form-control" placeholder="商品描述" name="goodDes" type="text">
        <input class="form-control" placeholder="商品类型" name="goodClassify" type="text">
        <button type="submit" class="">添加</button>
    </div>
</form>
<div class="pageleft">
    <button type="button" class="">添加商品</button>
    <button type="button" class="">更新广告</button>
</div>
</body>
</html>
