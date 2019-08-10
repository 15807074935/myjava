<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/gm.css"/>
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
                    <li class="right-li"><a href="/endingwork_war_exploded/goods/getgoods" target="_blank" style="color:#f30213">商家中心</a></li>
                    <li class="right-li"><a href="/endingwork_war_exploded/sc/getsc" target="_blank">我的购物车</a></li>
                    <li class="right-li"><a href="/endingwork_war_exploded/html/login.jsp" target="_blank" style="color:#f30213" id="cookieuse2">免费注册</a></li>
                    <li class="right-li" id="userli"><a href="/endingwork_war_exploded/html/register.jsp" target="_blank" id="cookieuse1" style="display: block;">你好，请登陆</a>
                        <div id="usermes">
                            <ul class="innerul">
                                <li class="innerli"><a href="/endingwork_war_exploded/user/getoneuser" target="_blank">个人中心</a></li>
                                <li class="innerli"><a href="/endingwork_war_exploded/trade/usertrade">我的订单</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <div class="img-content">
                    <a href="#"></a>
                </div>
            </div>
        </div>
        <div class="local">
            <div class="top">
                <h2>收货地址</h2>
            </div>
            <div class="main">
                <div class="dz">
                    <span style="display: block;font-size: 12px;border-bottom: 1px solid #f2f2f2;width: 207px;height: 23px;margin: 0 auto;line-height: 23px;color:#666;padding-top: 5px">（${user_name}收）</span>
                    <span style="display: block;font-size: 12px;width: 207px;height: 42px;margin: 0 auto;line-height: 23px;color:#666;">${local}</span>
                    <a href="#" style="display: block;font-size: 12px;width: 207px;height: 23px;margin: 0 auto;line-height: 23px">修改</a>
                </div>
<%--                <div class="dz1">--%>
<%--                    <span></span>--%>
<%--                    <a href="#">修改</a>--%>
<%--                </div>--%>
<%--                <div class="dz1">--%>
<%--                    <span></span>--%>
<%--                    <a href="#">修改</a>--%>
<%--                </div>--%>
<%--                <div class="dz1">--%>
<%--                    <span></span>--%>
<%--                    <a href="#">修改</a>--%>
<%--                </div>--%>
            </div>
        </div>
        <div class="sp-mes">
            <div class="top">
                <h2>确认订单信息</h2>
            </div>
            <div class="mid">
                <div class="tip1">商品名称</div>
                <div class="tip2">商品属性</div>
                <div class="tip3">单价</div>
                <div class="tip4">数量</div>
                <div class="tip5">优惠方式</div>
                <div class="tip6">小计</div>
            </div>
            <div class="btm">
                <div class="mes">
                    <div class="mes1">
                        <div style="width:55px;height: 55px;display: block;float: left;margin-left: 10px;">
                            <c:choose>
                                <c:when test="${not empty file }">
                                    <!--索引-->
                                    <!-- filename:文件的名字，不带UUID -->
                                    <c:set var="filename"
                                           value='${fn:substring(file.name,fn:indexOf(file.name,"_")+1,fn:length(file.name)) }' ></c:set>
                                    <!-- filefullname:文件的名字，带UUID c:set中使用“\\”会报错，要使用“\\\\”，其他地方使用“\\”即可-->
                                    <c:set var="filefullname"
                                           value='${fn:split(file.path,"\\\\")[fn:length(fn:split(file.path,"\\\\"))-1] }'></c:set>
                                    <!-- rootdir:文件的目录 -->
                                    <c:set var="rootdir"
                                           value='${pageContext.request.contextPath}/upload/'></c:set>
                                </c:when>
                                <c:otherwise>
                                    暂无数据
                                </c:otherwise>
                            </c:choose>
                            <img src="${rootdir.concat(filefullname) }" style="width:50px;height:50px;float:left;">
                        </div>
                        <span style="display: block;width:150px;height: 50px;float:left;line-height: 50px;margin-left: 15px;">${xh}</span>
                    </div>
                    <div class="mes2">
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;">颜色分类：</span>
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;">${color}</span>
                    </div>
                    <div class="mes3">
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;margin-left: 50px;">${prices}</span>
                    </div>
                    <div class="mes4">
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;margin-left: 60px;">1</span>
                    </div>
                    <div class="mes5">
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;margin-left: 80px;">无优惠</span>
                    </div>
                    <div class="mes6">
                        <span style="display: block;width:60px;height: 50px;float:left;line-height: 50px;margin-left: 60px;font-weight: 700;color: #ff0036;">${prices}</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="buy-btn">
            <div class="local-mes">
                <div style="width:494px;height:118px;border: 3px solid #fff0e8;">
                    <div class="top">
                        <span style="color: #ff0036;font: 700 26px tahoma">${prices}</span>
                        <span style="font-size: 26px;color: #999;width: 25px;">￥</span>
                        <span style="font-weight: 700;color: #333;width: 65px;">实付款：</span>
                    </div>
                    <div class="btm">
                        <div class="btm-local">
                            <span style="font-weight: 700;color: #333;font-size:12px;margin-left: 20px;">寄送至：</span>
                            <span style="color: #333;font-size:12px">${local}</span>
                        </div>
                        <div class="btm-name">
                            <span style="font-weight: 700;color: #333;font-size:12px;margin-left: 287px;display:block; float: left;width:48px;height: 16px;">收货人：</span>
                            <span style="color: #333;font-size:12px;display:block; float: left;width:119px;height: 16px;text-align: right">${user_name} ${tel}</span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="btn">
                <a href="/endingwork_war_exploded/trade/addtrade?spid=${spid}">提交订单</a>
            </div>
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