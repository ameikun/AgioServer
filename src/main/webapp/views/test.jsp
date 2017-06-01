<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/6/1
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>test</title>
    <link href="/AgioServer/resources/common/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="">
    <p>优惠额度:${coupon.couponLimit}</p>
    <p>优惠原因:${coupon.couponReason}</p>
    <p>过期时间:${coupon.expireDate}</p>
    <a href="../views/unitetest.jsp">返回</a>
</div>
</body>
</html>
