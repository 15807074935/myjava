<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/dd.css"/>
    <script src="/endingwork_war_exploded/webroot/js/jquery-1.11.1.js"></script>
</head>

<body>
<div class="wrapper">
    <div class="top-nav-wrap">
        <div class="center-nav">
            <ul>
                <li class="top-home top-li"></li>
                <li class="top-li"><a href="/endingwork_war_exploded/"class="li-link">拍拍首页</a></li>
                <li class="top-loacl top-li"></li>
                <li class="top-li"><a href="#" class="init-local">江西</a>
                    <div class="local-more">
                        <ul class=more-ul>
                            <li class="more-li">
                                <ul>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                </ul>
                            </li>
                            <li class="more-li">
                                <ul>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                </ul>
                            </li>
                            <li class="more-li">
                                <ul>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                </ul>
                            </li>
                            <li class="more-li">
                                <ul>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                </ul>
                            </li>
                            <li class="more-li">
                                <ul>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                    <li class="more-li-li"><a href="#">江西</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <ul>
                <li class="right-li"><a href="/endingwork_war_exploded/trade/sellertrade" target="_blank" style="color:#f30213">商家中心</a></li>
                <li class="right-li"><a href="/endingwork_war_exploded/sc/getsc" target="_blank">我的购物车</a></li>
                <li class="right-li"><a href="/endingwork_war_exploded/html/login.jsp" target="_blank" style="color:#f30213" id="cookieuse2">免费注册</a></li>
                <li class="right-li" id="userli"><a href="/endingwork_war_exploded/html/register.jsp" target="_blank" id="cookieuse1" style="display: block;">你好，请登陆</a>
                    <div id="usermes">
                        <ul class="innerul">
                            <li class="innerli"><a href="/endingwork_war_exploded/user/getoneuser" target="_blank">个人中心</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div style="background-color: #fff">
        <div class="top">
            <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/nlogo.png" style="width: 82px;height: 36px;"></a>
            <span class="s1">我的订单</span>
        </div>
    </div>
    <div class="mid">
        <a href="/endingwork_war_exploded/trade/usertrade">全部订单</a>
        <a href="/endingwork_war_exploded/trade/unfinishtrade" style="color: #e4393c;font-weight:700;">待收货</a>
        <a href="/endingwork_war_exploded/trade/finishtrade">已收货</a>
    </div>
    <div class="btm">
        <div class="text">
            <span style="margin-left: 70px;">订单详情</span>
            <span style="margin-left: 360px;">金额</span>
            <span style="margin-left: 65px;">收货人</span>
            <span style="margin-left: 140px;">状态</span>
            <span style="margin-left: 100px;">操作</span>
        </div>
        <c:choose>
            <c:when test="${not empty imglist }">

                <c:forEach items="${imglist }" var="file" varStatus="vs">
                    <!-- filename:文件的名字，不带UUID -->
                    <c:set var="filename"
                           value='${fn:substring(file.name,fn:indexOf(file.name,"_")+1,fn:length(file.name)) }' ></c:set>
                    <!-- filefullname:文件的名字，带UUID c:set中使用“\\”会报错，要使用“\\\\”，其他地方使用“\\”即可-->
                    <c:set var="filefullname"
                           value='${fn:split(file.path,"\\\\")[fn:length(fn:split(file.path,"\\\\"))-1] }'></c:set>
                    <!-- rootdir:文件的目录 -->
                    <c:set var="rootdir"
                           value='${pageContext.request.contextPath}/upload/'></c:set>
                    <c:set var="index"
                           value='${vs.index}'></c:set>

                    <div class="text2">
                        <span style="margin-left: 20px;color:#aaa">${tradelist.get(index).tradedate}</span>
                        <span style="margin-left: 50px;color:#aaa">订单号：</span>
                        <span>${tradelist.get(index).trade_id}</span>
                    </div>

                    <div class="sp">
                        <div class="main">
                            <div class="image">
                                <img src="${rootdir.concat(filefullname) }" style="width:80px;height: 80px;">
                            </div>
                            <div class="title">
                                    ${goodslist.get(index).goods_name}
                            </div>
                            <div class="prices">
                                <span>￥${goodslist.get(index).prices}</span>
                            </div>
                            <div class="count">
                                <span>${user}</span>
                            </div>
                            <div class="xj">
                                <span>${tradelist.get(index).progress}</span>
                            </div>
                            <div class="cz">
                                <a href="/endingwork_war_exploded/trade/confirmtrade?spid=${goodslist.get(index).goods_id}">${tradelist.get(index).complete}</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                暂无数据
            </c:otherwise>
        </c:choose>
    </div>
</div>
<script type="text/javascript">
    var topa=document.getElementsByClassName("top-li")[3];
    var localMore=document.getElementsByClassName("local-more")[0];
    var initLocal=document.getElementsByClassName("init-local")[0];
    topa.addEventListener("mousemove",function(){
        localMore.style.display="block";
        initLocal.style.backgroundColor="#fff";
    },false)
    topa.addEventListener("mouseleave",function(){
        localMore.style.display="none";
        initLocal.style.backgroundColor="";
    },false)


    function getCookie(c_name)
    {
        if (document.cookie.length>0)
        {
            c_start=document.cookie.indexOf(c_name + "=")
            if (c_start!=-1)
            {
                c_start=c_start + c_name.length+1
                c_end=document.cookie.indexOf(";",c_start)
                if (c_end==-1) c_end=document.cookie.length
                return unescape(document.cookie.substring(c_start,c_end))
            }
        }
        return ""
    }
    window.onload=function(){
        var zc=document.getElementById("cookieuse2");
        var dl=document.getElementById("cookieuse1");
        var user=document.getElementById("usermes");
        var name_value = getCookie("user_name");
        console.log(name_value);
        if(name_value!=""){
            console.log("in here2");
            zc.innerText="发布闲置";
            zc.href="/endingwork_war_exploded/html/lb.jsp";
            dl.innerText="你好，"+name_value+" V";
        }
    }

    //user
    var dl=document.getElementById("cookieuse1");
    var limes=document.getElementById("userli");
    var user=document.getElementById("usermes");
    limes.onmouseover=function(){
        var name_value = getCookie("user_name");
        if(name_value!=""){
            user.style.display="block";
            limes.style.background="#fff";
            dl.style.color="#999";
        }
    };
    limes.onmouseleave=function(){
        var name_value = getCookie("user_name");
        if(name_value!=""){
            user.style.display="none";
            limes.style.background="";
        }
    }
</script>
</body>

</html>
