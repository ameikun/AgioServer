<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/25
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>search</title>
    <link href="/AgioServer/resources/mainpage/css/mainpage.css" rel="stylesheet">
</head>
<body>
<div class="zySearch" id="zySearch"></div>
<script type="text/javascript" src="/AgioServer/resources/mainpage/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="/AgioServer/resources/mainpage/js/Search.js"></script>
<script type="text/javascript">
    $("#zySearch").zySearch({
        "width":"355",
        "height":"33",
        "parentClass":"pageTitle",
        "callback":function(keyword){
            console.info("搜索的关键字");
            console.info(keyword);
        }
    });
</script>

</body>
</html>
