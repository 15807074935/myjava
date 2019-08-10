<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<%--%>
<%--           String path=request.getContextPath();--%>
<%--           String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
<%--%>--%>
<html>
<head>
	<title></title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/mycss.css"/>
<%--    <base href="<%=basePath%>>">--%>
</head>
<body>
    <div class="register">
    <p style="font-weight: 700;color: #e4393c;margin-left: 20px;font-size: 18px;display:block">账户登录</p>
    <form method="POST" action="/endingwork_war_exploded/user/userlogin" style="margin-left: 20px">
        <span class="image1"></span>
        <input type="text" name="user_name"><br>
        <span class="image2"></span>
        <input type="password" name="password">
        <input type="submit" value="登&nbsp;&nbsp;录" style="width:295px;margin-left: 0;margin-top: 20px;background-color:#e4393c;color: #fff;font-size:18px;border:1px solid #e4393c">
    </form>
    <span class="image3"></span>
    <a href="/endingwork_war_exploded/html/login.jsp" style="top:260px;left:250px;position:absolute;color:#e4393c">立即注册</a>
    </div>
<script type="text/javascript">
    if("${loginmes}"!=""){
        alert("${loginmes}")
        console.log("${loginmes}"+"  mes");
    }
</script>
</body>
</html>