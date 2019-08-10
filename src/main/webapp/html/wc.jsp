<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/wc.css"/>
</head>

<body class="fb">
    <div class="wrapper">
        <div class="top">
            <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
            <span class="s1">发布闲置</span>
            <span class="s2">已发布闲置？&nbsp;&nbsp;<a href="#">点击查看></a></span>
        </div>
        <div class="mid">
            <div class="left">
                <span>1.选择类别</span>
            </div>
            <div class="center">
                <span>2.填写信息</span>
            </div>
            <div class="right">
                <span>3.完成发布</span>
            </div>
        </div>
        <div class="btm">
            <div style="margin-left: 550px;margin-top: 100px;">
                <img src="<%=request.getContextPath() %>/webroot/images/lg.png" style="width:100px;">
            </div>
            <div style="margin-left: 565px;margin-top: 10px;">
                <span style="font-size: 16px;">发布成功</span>
            </div>
            <div style="margin-left: 480px;margin-top: 70px;font-size: 14px">
                <span>您可以选择进入</span><a href="/endingwork_war_exploded/" style="text-decoration: none">拍拍首页</a>或者进入<a href="/endingwork_war_exploded/html/sjzx.jsp" style="text-decoration: none">卖家中心</a>
            </div>
        </div>
    </div>
</body>

</html>