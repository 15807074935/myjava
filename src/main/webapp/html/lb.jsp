<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>发布闲置</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/lb.css"/>
</head>

<body class="fb">
    <div class="wrapper">
        <div class="top">
            <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
            <span class="s1">发布闲置</span>
            <span class="s2">已发布闲置？&nbsp;&nbsp;<a href="/endingwork_war_exploded/trade/sellertrade" target="_blank">点击查看></a></span>
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
            <div class="left">
                <a href="/endingwork_war_exploded/html/fb2.jsp">学习用品</a>
                <a href="/endingwork_war_exploded/html/fb.jsp">手机通讯</a>
                <a href="/endingwork_war_exploded/html/fb3.jsp">服饰</a>
            </div>
            <div class="right">
                <a href="/endingwork_war_exploded/html/fb4.jsp">数码影音</a>
                <a href="/endingwork_war_exploded/html/fb5.jsp">二手电脑</a>
            </div>

        </div>
    </div>
</body>

</html>