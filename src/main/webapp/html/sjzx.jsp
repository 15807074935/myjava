<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商家中心</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/sjzx.css"/>
    <script src="/endingwork_war_exploded/webroot/js/jquery-1.11.1.js"></script>
</head>
<body>
    <div class="wrapper">
        <div class="top">
        <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
        <span>商家中心</span>
        </div>
        <div class="btm">
            <table>
                    <div style="font-weight: 700;margin-left: 10px;margin-top: 10px;font-size: 14px"><span>发布的商品</span></div>
                    <tr>
                        <th>商品类别</th>
                        <th>商品名称</th>
                        <th>商品颜色</th>
                        <th>商品价格</th>
                        <th>交易方式</th>
                        <th>商品标题</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${goodslist}" var="goods">
                    <tr>
                        <form action="/endingwork_war_exploded/trade/editgoods" method="post">
                            <input type="text" class="spinput" name="goods_id" value="${goods.goods_id}" style="display: none">
                        <td class="sptd"><input type="text" class="spinput" name="brand" value="${goods.brand}"></td>
                        <td class="sptd"><input type="text" class="spinput" name="xh" value="${goods.xh}"></td>
                        <td class="sptd"><input type="text" class="spinput" name="color" value="${goods.color}"></td>
                        <td class="sptd"><input type="text" class="spinput" name="prices" value="${goods.prices}"></td>
                        <td class="sptd"><input type="text" class="spinput" name="goods_change" value="${goods.goods_change}"></td>
                        <td class="sptd" style="width:300px"><input type="text" class="spinput" name="goods_name" style="width:300px" value="${goods.goods_name}"></td>
                        <td class="sptd" style="width:100px"><a href="/endingwork_war_exploded/trade/goodsdel?spid=${goods.goods_id}" style="background-color:orange;color:#fff;display:block;float:left;width:35px;height: 25px;margin-left: 8px;font-size: 13px;text-align: center;line-height: 25px  ">删除</a>
                            <input type="submit" value="保存" style="background-color:#f40;color:#fff;width:35px;height: 25px;margin-left: 8px;font-size: 13px;text-align: center;line-height: 25px;border:none"/> </td>
                        </form>
                    </tr>
                    </c:forEach>

            </table>

            <table>
                <div style="font-weight: 700;margin-left: 10px;margin-top: 10px;font-size: 14px "><span>售出的商品（完善物流信息）</span></div>
                <tr>
                    <th>商品类别</th>
                    <th>商品名称</th>
                    <th>商品价格</th>
                    <th>买家昵称</th>
                    <th>买家电话</th>
                    <th>物流信息</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${selllist}" var="goods" varStatus="vs">
                    <c:set var="index"
                           value='${vs.index}'></c:set>
                <tr>
                    <form action="/endingwork_war_exploded/trade/updateprogress" method="post">
                        <input type="text" class="spinput" name="goods_id" value="${goods.goods_id}" style="display: none">
                    <td class="sptd "><input type="text " class="spinput " name=" brand" readonly="readonly " value="${goods.brand}"></td>
                    <td class="sptd "><input type="text " class="spinput " name="xh" readonly="readonly " value="${goods.xh}"></td>
                    <td class="sptd "><input type="text " class="spinput " name="prices" readonly="readonly " value="${goods.prices}"></td>
                    <td class="sptd "><input type="text " class="spinput " name="user_name" readonly="readonly " value="${userlist.get(index).user_name}"></td>
                    <td class="sptd "><input type="text " class="spinput " name="tel" readonly="readonly " value="${userlist.get(index).tel}"></td>
                    <td class="sptd " style="width:300px "><input type="text " class="spinput " name="progress" style="width:300px " value="${tlist.get(index).progress}"></td>
                    <td class="sptd " style="width:100px "><input type="submit" value="保存" style="background-color:#f40;color:#fff;width:35px;height: 25px;margin-left: 28px;font-size: 13px;text-align: center;line-height: 25px;border:none"/></td>
                    </form>
                </tr>
                </c:forEach>

            </table>

            <table>
                <form action=" ">
                    <div style="font-weight: 700;margin-left: 10px;margin-top: 10px;font-size: 14px "><span>完成的交易</span></div>
                    <tr>
                        <th>商品类别</th>
                        <th>商品名称</th>
                        <th>商品价格</th>
                        <th>买家昵称</th>
                        <th>买家电话</th>
                        <th>物流信息</th>
                    </tr>
                    <c:forEach items="${finishgoods}" var="goods" varStatus="vs">
                    <c:set var="index"
                           value='${vs.index}'></c:set>
                    <tr>
                        <td class="sptd "><input type="text " class="spinput " name=" " readonly="readonly " value="${goods.brand}"></td>
                        <td class="sptd "><input type="text " class="spinput " name=" " readonly="readonly " value="${goods.xh}"></td>
                        <td class="sptd "><input type="text " class="spinput " name=" " readonly="readonly " value="${goods.prices}"></td>
                        <td class="sptd "><input type="text " class="spinput " name=" " readonly="readonly " value="${finishuser.get(index).user_name}"></td>
                        <td class="sptd "><input type="text " class="spinput " name=" " readonly="readonly " value="${finishuser.get(index).tel}"></td>
                        <td class="sptd " style="width:300px "><input type="text " class="spinput " name=" " style="width:300px " value="${finishtrade.get(index).progress}"></td>
                    </tr>
                    </c:forEach>
                </form>
            </table>

        </div>
    </div>
    <script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/sjzx.js"></script>
</body>
</html>