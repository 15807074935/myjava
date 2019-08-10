<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 26021
  Date: 2019/6/5
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/allmes.css"/>
</head>
<body>

<div class="wrapper">
    <div class="top">
        <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
        <span>管理员页</span>
    </div>
    <div class="btm">
        <table>
            <div style="font-weight: 700;margin-left: 10px;margin-top: 10px;font-size: 14px"><span>用户信息</span></div>
            <tr>
                <th>用户名</th>
                <th>用户性别</th>
                <th>用户地址</th>
                <th>用户电话</th>
                <th>用户邮箱</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${userlist}" var="user">
                <tr>
                    <td class="sptd">${user.user_name}</td>
                    <td class="sptd">${user.sex}</td>
                    <td class="sptd">${user.address}</td>
                    <td class="sptd">${user.tel}</td>
                    <td class="sptd">${user.email}</td>
                    <td class="sptd"><a href="/endingwork_war_exploded/manager/deluser?user_id=${user.user_id}">Del</a></td>
                </tr>
            </c:forEach>
        </table>
        <table>
            <div style="font-weight: 700;margin-left: 10px;margin-top: 10px;font-size: 14px"><span>商品信息</span></div>
            <tr>
                <th>商品类别</th>
                <th>商品名</th>
                <th>商品标题</th>
                <th>商品价格</th>
                <th>商品版本</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${goodslist}" var="goods">
                <tr>
                    <td class="sptd">${goods.brand}</td>
                    <td class="sptd">${goods.xh}</td>
                    <td class="sptd">${goods.goods_name}</td>
                    <td class="sptd">${goods.prices}</td>
                    <td class="sptd">${goods.model}</td>
                    <td class="sptd"><a href="/endingwork_war_exploded/manager/delgoods?goods_id=${goods.goods_id}">Del</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
