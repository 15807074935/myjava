<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布闲置</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/mycss.css"/>
    <script src="/endingwork_war_exploded/webroot/js/jquery-1.11.1.js"></script>
</head>
<body class="fb">
<div class="wrapper">
    <div class="top">
        <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
        <span class="s1">发布闲置</span>
        <span class="s2">已发布闲置？&nbsp;&nbsp;<a href="/endingwork_war_exploded/trade/sellertrade">点击查看></a></span>
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
        <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/goods/addgoods.do" id="formTag1" >
            <h2>商品基本信息</h2>
            <div style="float:left">
                <div>
                    <span>商品类别</span>
                    <input type="text" name="goods_type" value="二手电脑" readonly="readonly" style="border: none;">
                </div>
                <div>
                    <span>商品标题</span>
                    <input type="text" name="goods_name">
                </div>
                <div>
                    <span>商品价格</span>
                    <input type="text" name="prices">
                </div>
                <div>
                    <span>商品品牌</span>
                    <select name="brand" style="height:34px;margin-left: 10px;border:solid 1px #e0e0e0;">
                        <option value="未选择">--请选择--</option>
                        <option value="华硕">华硕</option>
                        <option value="苹果">苹果</option>
                        <option value="惠普">惠普</option>
                        <option value="神州">神州</option>
                        <option value="戴尔">戴尔</option>
                        <option value="外星人">外星人</option>
                    </select>
                </div>
                <div>
                    <span>商品型号</span>
                    <input type="text" name="xh">
                </div>
                <div>
                    <span>处理器</span>
                    <input type="text" name="model">
                </div>
                <div>
                    <span>商品颜色</span>
                    <input type="text" name="color">
                </div>
                <div>
                    <span>交易地点</span>
                    <input type="text" name="goods_local">
                </div>
            </div>
            <div style="float:left;margin-left: 20px;">
                <div>
                    <span>交易方式</span>
                    <select name="goods_change" style="height:34px;margin-left: 10px;border:solid 1px #e0e0e0;">
                        <option value="未选择">--请选择--</option>
                        <option value="同校面交">同校面交</option>
                        <option value="同校面交">邮寄</option>
                    </select>
                </div>
                <div>
                    <div id='dd' style="margin-left: 110px;"></div>
                    <span>上传图片</span>
                    <div class="outer">
                        <div class="top">上传电脑中的图片</div>
                        <div class="upload">
                            <input type="file" name="pictureFile" id="pictureFile" style="width:99px;height: 90px;opacity: 0;cursor: pointer" />
                        </div>
                    </div>

                </div>

                <h2>联系方式</h2>
                <div>
                    <span>联系人</span>
                    <input type="text" name="user_name">
                </div>
                <div>
                    <span>联系电话</span>
                    <input type="text" name="user_tel">
                </div>
                <div style="margin-left:80px;margin-bottom: 100px;margin-top: 40px;">
                    <input type="submit" value="发布" style="text-align: center;
                    cursor: pointer;background-color: #ed6d06;
                    color: #fff;
                    border: 0;
                    width: 258px;
                    height: 44px;
                    line-height: 44px;
                    font-size: 18px;
                    font-weight: bolder;
                    border-radius: 5px;">
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/fb.js"></script>
</body>
</html>
