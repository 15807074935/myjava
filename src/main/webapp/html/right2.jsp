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
        <div class="right2">
                <div class="right2top">
                    <h4>我的商品</h4>
                </div>
               <div class="right2btm">
                   <form action="/endingwork_war_exploded/goods/editgoods" method="POST" class="btmform">
                       <table class="btmtable">
                           <tr>
                               <th>商品名称</th>
                               <th>商品价格</th>
                               <th>商品类型</th>
                               <th>商品介绍</th>
                               <th>商品交易地点</th>
                           </tr>
                           <c:forEach items="${goodslist}" var="gl" varStatus="st">
                               <tr>
                                   <td style="display: none"><input type="hidden" name="goods_id" value=${gl.goods_id}></td>
                                   <td><input type="text" name="goods_name" value=${gl.goods_name}></td>
                                   <td><input type="text" name="prices" value=${gl.prices}></td>
                                   <td><input type="text" name="goods_type" value=${gl.goods_type}></td>
                                   <td style="width:250px"><input type="text" name="goods_describe" value=${gl.goods_describe} style="width:250px"></td>
                                   <td><input type="text" name="goods_local" value=${gl.goods_local}></td>
                               </tr>
                           </c:forEach>
                               <tr>
                                   <th>商品交易方式</th>
                                   <th>联系人名称</th>
                                   <th>电话</th>
                                   <th>操作</th>
                                   <th>操作</th>
                               </tr>
                           <c:forEach items="${goodslist}" var="gl" varStatus="st">
                               <tr>
                                   <td><input type="text" name="goods_change" value=${gl.goods_change}></td>
                                   <td><input type="text" name="user_name" value=${gl.user_name}></td>
                                   <td><input type="text" name="user_tel" value=${gl.user_tel}></td>
                                   <td style="text-align: center" class="btmsub"><a href="/endingwork_war_exploded/goods/editgoods?goods_id=${gl.goods_id}&goods_name=${gl.goods_name}&prices=${gl.prices}&goods_type=${gl.goods_type}&goods_describe=${gl.goods_describe}&goods_local=${gl.goods_local}&user_name=${gl.user_name}&user_tel=${gl.user_tel}">修改提交</a></td>
                                   <td style="text-align: center" class="btmdel"><a href="/endingwork_war_exploded/goods/delgoods?goods_id=${gl.goods_id}">删除</a></td>
                               </tr>
                           </c:forEach>
                       </table>
                   </form>
               </div>
            </div>
        <script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/right2.js"></script>
</body>
</html>