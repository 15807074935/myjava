<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div>
    <div>
        <h2>我的订单</h2>
    </div>
    <div>
        <form action="#" method="POST">
            <table border="1">
                <tr>
                    <th>商品名称</th>
                    <th>商品价格</th>
                    <th>商品类型</th>
                    <th>商品介绍</th>
                    <th>商品交易地点</th>
                    <th>商品交易方式</th>
                    <th>操作</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${goodsList}" var="gl" varStatus="st">
                    <tr>
                        <td><input type="text" name="goods_name" value=${gl.goods_name}></td>
                        <td><input type="text" name="prices" value=${gl.prices}></td>
                        <td><input type="text" name="goods_type" value=${gl.goods_type}></td>
                        <td><input type="text" name="goods_describe" value=${gl.goods_describe}></td>
                        <td><input type="text" name="goods_local" value=${gl.goods_local}></td>
                        <td><input type="text" name="goods_change" value=${gl.goods_change}></td>
                        <td><input type="submit" value="提交"></td>
                        <td><input type="submit" value="删除"></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/right1.js"></script>
</body>
</html>