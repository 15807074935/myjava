<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${brand}</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/sp.css"/>
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
        <div class="top-search">
            <div class="logo">
                <a href="#"></a>
            </div>
            <div class="main-content">
                <div class="rec-content">
                    <from>
                        <input type="text" name="search" class="text-search">
                        <input type="submit" value="搜索" class="submit" id="obtn">
                    </from>
                    <ul class="load_more">
                    </ul>
                </div>
                <div class="text-content">
                    <a href="#" style="margin-left:0px;">OPPOR9s手机</a>
                    <a href="#">小米平板</a>
                    <a href="#">iphone6s64g</a>
                    <a href="#">备件库</a>
                    <a href="#">二手冰箱</a>
                    <a href="#">奢侈品饰品</a>
                    <a href="#">二手电视</a>
                </div>
            </div>
        </div>
        <div class="mid-nav">
            <div class="nav-content">
                <span>全部商品分类</span>
            </div>
        </div>
        <div class="top-select">
            <div class="left">
                <span class="span1">二手商品</span>
                <span class="span2">></span>
            </div>
            <div class="right">
            </div>
        </div>
        <div class="main-select">
            <div class="top">
                <span style="color: #e4393c;margin-right: 5px;font-weight: bold;font-size: 14px;margin-left:8px ;">二手商品</span>
                <span style="font-size: 14px;font-weight: bold">商品筛选</span>
                <span style="font-size: 14px;margin-left: 20px;">共${spcount}件商品</span>
            </div>
            <div class="mid">
                <span class="mid-text">${one}</span>
                <div class="ul-content">
                    <ul>
                        <c:forEach items="${prices}" var="p" varStatus="vs">
                        <li class="lb"><a href="/endingwork_war_exploded/ym/ymprices?prices=${p}&spbrand=${brand}&btn=pricesred${vs.index}&lx=${splx}" class="pricesred${vs.index}">${p}</a></li>
                        </c:forEach>
                    </ul>
                </div>

            </div>
            <div class="mid">
                <span class="mid-text">${two}</span>
                <div class="ul-content">
                    <ul>
                        <c:forEach items="${hot}" var="h" varStatus="vs">
                            <li class="lb"><a href="/endingwork_war_exploded/ym/ymhot?spbrand=${brand}&hot=${h}&btn=hotred${vs.index}&lx=${splx}" class="hotred${vs.index}">${h}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="mid">
                <span class="mid-text">${three}</span>
                <div class="ul-content">
                    <ul>
                        <c:forEach items="${type}" var="t" varStatus="vs">
                            <li class="lb"><a href="/endingwork_war_exploded/ym/ymmodel?spbrand=${brand}&model=${t}&btn=modelred${vs.index}&lx=${splx}" class="modelred${vs.index}">${t}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="btm">
                <span class="mid-text">${four}</span>
                <div class="ul-content">
                    <ul>
                        <c:forEach items="${guarantee}" var="g">
                            <li class="lb"><a href="#">${g}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content-main">
            <div class="top-nav">
                <a href="#" class="tnc" style="margin-left:8px">销量</a>
                <a href="#" class="tnc">价格</a>
                <a href="#" class="tnc">评论数</a>
                <a href="#" class="tnc">上架时间</a>
            </div>
            <div class="mid-nav">
                <span>配送至</span>
                <form action="#">
                    <select>
                        <option value ="南昌">南昌</option>
                        <option value ="赣州">赣州</option>
                        <option value="吉安">吉安</option>
                        <option value="九江">九江</option>
                    </select>
                </form>
            </div>
            <div class="sp-content">
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
                            <div class="sp-item">
                                <a href="/endingwork_war_exploded/ym/getitemgoods?imgpath=${goodslist.get(index).imgPath}&prices=${goodslist.get(index).prices}&goodschange=${goodslist.get(index).goods_change}&goods_name=${goodslist.get(index).goods_name}&color=${goodslist.get(index).color}&model=${goodslist.get(index).model}&spuser=${goodslist.get(index).user_name}&sptel=${goodslist.get(index).user_tel}&xh=${goodslist.get(index).xh}&spid=${goodslist.get(index).goods_id}" target="_blank">
                                    <img src='${rootdir.concat(filefullname) }' style="width:220px;height: 220px">

                                    <span class="prices"><span>￥</span>${goodslist.get(index).prices}</span>
                                    <span class="describe">
                                                    ${goodslist.get(index).goods_name}
                                                    </span>
                                </a>
                            </div>

                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        暂无数据
                    </c:otherwise>
                </c:choose>


            </div>
        </div>
    </div>
<%--    <script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/sp.js"></script>--%>
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
        if("${btn}"!=null){
            var btnred=document.getElementsByClassName("${btn}")[0];
            btnred.style.color="#f30213";
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