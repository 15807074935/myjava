<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/user.css"/>
    <script src="/endingwork_war_exploded/webroot/js/jquery-1.11.1.js"></script>
    <title>个人中心</title>
</head>
<body>
    <div class="wrapper">
        <div class=top>
            <a href="#"><img src="<%=request.getContextPath() %>/webroot/images/logo.png" style="width: 82px;height: 36px;"></a>
            <span class="s1">个人中心</span>
        </div>
<%--        <div class="btm">--%>
<%--            <form action="#" method="POST" id="userform">--%>
<%--                <div><span>用户名：</span><input class="userinput" type="text" name="user_name" value="${oneuser.user_name}" readonly="readonly" style="border:none;"></div>--%>
<%--                <div><span>性别：</span><div style="margin-top:10px;" ><input type="radio" name="sex" value="男" id="male">男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女" id="female">女&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="保密" id="bothnot">保密</div></div>--%>
<%--                <div><span>地址：</span><input class='userinput' type="text" name="address" value="${oneuser.address}"></div>--%>
<%--                <div><span>电话：</span><input class='userinput' type="text" name="tel" value="${oneuser.tel}"></div>--%>
<%--                <div><span>email：</span><input class='userinput' type="text" name="email" value="${oneuser.email}"></div>--%>
<%--                <div><input type="button" value="提交" style="margin-left:80px" id="sub"></div>--%>
<%--            </form>--%>
<%--        </div>--%>

        <div class="btm">
            <form id="userform">
                <div class="tip"><span>基本资料</span></div>
                <div style="border-bottom: 1px solid #eee;margin-top: 0px;"><span>用户名：</span><input class="userinput" type="text" name="user_name" value="${oneuser.user_name}" readonly="readonly" style="border:none;"></div>
                <div style="margin-top: 0px;border-bottom: 1px solid #eee;"><span>性别：</span>
                    <input type="radio" name="sex" value="男" class="choose" id="male">男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女" class="choose" id="female">女&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="保密" class="choose" id="bothnot">保密
                </div>
                <div><span>地址：</span><input class='userinput' type="text" name="address" value="${oneuser.address}" style="width: 500px"></div>
                <div><span>电话：</span><input class='userinput' type="text" name="tel" value="${oneuser.tel}"></div>
                <div><span>email：</span><input class='userinput' type="text" name="email" value="${oneuser.email}"></div>
                <div style="border-top: 1px solid #eee;"><input type="button" value="保存" style="margin-top: 15px;margin-left: 110px;width:50px;height: 30px;line-height:30px;background-color: #f40;color: #fff;border:none" id="sub"></div>
            </form>
        </div>

    </div>
<script type="text/javascript">
    window.onload=function(){
        var male=document.getElementById("male");
        var female=document.getElementById("female");
        var bothnot=document.getElementById("bothnot");
        if("${oneuser.sex}"=="男"){
           male.checked =true;
        }else{
            if("${oneuser.sex}"=="女"){
                female.checked =true;
            }else{
                bothnot.checked =true;
            }
        }
    }
    var tip;
    var sub=document.getElementById("sub");
    sub.onclick=function(){
        $.ajax({
            async:true,
            url:'/endingwork_war_exploded/user/usermodify',
            type:'post',
            dataType:'json',
            data:$("#userform").serialize(),
            success:function(mes){
                tip=mes.result;
                console.log(mes.result);
                alert(mes.result);
            }
        });
    }
</script>
</body>
</html>