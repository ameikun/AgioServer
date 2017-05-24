<%--
  Created by IntelliJ IDEA.
  User: Amei
  Date: 2017/5/23
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>agio</title>
</head>
<body>
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
    document.write(welcome);
    document.write(name);
</script>
</body>
</html>
