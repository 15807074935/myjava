<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>购买成功</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/wc.css"/>
</head>

<body class="fb">
<div class="wrapper">
    <div class="top">
        <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/nlogo.png" style="width: 82px;height: 36px;"></a>
        <span class="s1">购买成功</span>
    </div>
    <div class="btm">
        <div style="margin-left: 550px;margin-top: 100px;">
            <img src="<%=request.getContextPath() %>/webroot/images/lg.png" style="width:100px;">
        </div>
        <div style="margin-left: 565px;margin-top: 10px;">
            <span style="font-size: 16px;">购买成功</span>
        </div>
        <div style="margin-left: 520px;margin-top: 70px;font-size: 14px">
            <span>您可以选择进入</span><a href="/endingwork_war_exploded/" style="text-decoration: none;color:#f40">拍拍首页</a>
        </div>
    </div>
</div>
</body>

</html>
