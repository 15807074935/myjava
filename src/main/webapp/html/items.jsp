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
    <title>${xh}</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/items.css"/>
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
                    <li class="right-li"><a href="/endingwork_war_exploded/trade/usertrade">我的订单</a></li>
                    <li class="right-li"><a href="/endingwork_war_exploded/html/login.jsp" target="_blank" style="color:#f30213" id="cookieuse2">免费注册</a></li>
                    <li class="right-li" id="userli"><a href="/endingwork_war_exploded/html/register.jsp" target="_blank" id="cookieuse1" style="display: block;">你好，请登陆</a>
                        <div id="usermes">
                            <ul class="innerul">
                                <li class="innerli"><a href="/endingwork_war_exploded/user/getoneuser" target="_blank">个人中心</a></li>
                                <li class="innerli"><a href="#">.....</a></li>
                                <li class="innerli"><a href="#">.....</a></li>
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
        <div class="bar-content">
            <div class="bar-nav">
                <a href="#" class="sp-link"><span class="s1">二手商品</span><span class="s2"> > </span></a>
            </div>
        </div>
        <div class="main-sp">
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

            <div class="left">
                <img src='${rootdir.concat(filefullname) }' style="height: 450px;height: 450px">
            </div>
            <div class="right">
                <div class="item-info">
                    <img src="<%=request.getContextPath() %>/webroot/images/slogo.png" alt="iphonex"><span> ${goods_name}</span>
                </div>
                <div class="news">
                    <a href="#" style="color:#e4393c">
                    华为nova4手机推荐：麒麟970芯片|4800万超广角徕卡三摄|6.4英寸极点屏|3750mAh大电池|AI视频专家等
                   </a>
                </div>
                <div class="summary-first">
                    <div class="top"><span class="top-s1">拍拍价</span><span style="color: #E4393C;font-family:microsoft yahei;padding-left: 15px;">￥</span><span class="top-s2">${prices}</span></div>
                    <div class="btm"><span class="btm-s1">促&nbsp;销</span><span class="btm-s2">赠品</span></div>
                </div>
                <div class="summary-choose">
                    <div class="sp-type">
                        <span class="tip">交易方式</span>
                        <span class="type">${goodschange}</span>
                    </div>
                    <div class="sp-info1">
                        <span class="tip">产品名称</span>
                        <span class="info">${xh}</span>
                    </div>
                    <div class="sp-info1">
                        <span class="tip">产品版本</span>
                        <span class="info">${model}</span>
                    </div>
                    <div class="sp-info2">
                        <span class="tip">产品颜色</span>
                        <span class="info">${color}</span>
                    </div>
                    <div class="sp-info3">
                        <span class="tip">产品数量</span>
                        <span class="info">一件</span>
                    </div>
                    <div class="sp-user">
                        <span class="tip">卖家昵称</span>
                        <span class="info">${spuser}</span>
                    </div>
                    <div class="sp-tel">
                        <span class="tip">卖家电话</span>
                        <span class="info">${sptel}</span>
                    </div>
                    <div class="sp-btn">
                        <a href="/endingwork_war_exploded/ym/gmgoods?spid=${spid}" class="a1" target="_blank">立即购买</a>
                        <a href="#" class="a2">
                            <span class="image"></span><span class="text">加入购物车</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var sc=document.getElementsByClassName("a2")[0];
        sc.onclick=function () {
            var xhr=new XMLHttpRequest();
            xhr.open("GET","/endingwork_war_exploded/sc/addsc?spid=${spid}",true);
            xhr.onload=function () {
                   var mes=xhr.responseText;
                   alert(mes);
            }
            xhr.send();
        }

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
        console.log("in here0");
        window.onload=function(){
            console.log("in here1");
            var zc=document.getElementById("cookieuse2");
            var dl=document.getElementById("cookieuse1");
            var user=document.getElementById("usermes");
            var name_value = getCookie("user_name");
            console.log(name_value);
            if(name_value!=""){
                console.log("in here2");
                zc.innerText="发布闲置";
                zc.href="/endingwork_war_exploded/html/lb.jsp";
                dl.innerText="你好，"+name_value;
            }
        }

        //user
        // var dl=document.getElementById("cookieuse1");
        // var limes=document.getElementById("userli");
        // var user=document.getElementById("usermes");
        // limes.onmouseover=function(){
        //     var name_value = getCookie("user_name");
        //     if(name_value!=""){
        //         console.log("in here");
        //         user.style.display="block";
        //         limes.style.background="#fff";
        //         dl.style.color="#999";
        //     }
        // };
        // limes.onmouseleave=function(){
        //     var name_value = getCookie("user_name");
        //     if(name_value!=""){
        //         console.log("leave");
        //         user.style.display="none";
        //         limes.style.background="";
        //     }
        // }

    </script>
</body>

</html>