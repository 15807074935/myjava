<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/mycss.css"/>
</head>
<body class="logbd">
    <div class="login">
        <div class="top">
            <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
            <span class="s1">欢迎注册</span>
            <span class="s2">已有账号？&nbsp;&nbsp;<a href="/endingwork_war_exploded/html/register.jsp">请登录></a></span>
        </div>
        <div class="btm">
        <form method="POST" action="/endingwork_war_exploded/user/userregister">
            <div style="width:550px"><label class="ts">用　户　名</label>
                <input type="text" name="user_name" class="btmName"><label class="tip">用户名已存在</label></div>
            <div><label class="ts">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label><input type="password" name="password"></div>
            <div><label class="ts">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label><input type="text" name="tel"></div>
            <div><label class="ts">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</label><input type="text" name="address"></div>
            <input type="submit" class="btSm" value="注&nbsp;&nbsp;册" style="width:410px;margin-left: 0;margin-top: 20px;background-color:#e4393c;color: #fff;font-size:18px;border:1px solid #e4393c">
        </form>
      </div>
        ${registermes}
    </div>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/zc.js"></script>
</body>
</html>