<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: 26021
  Date: 2019/5/19
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
            <div>
                <img alt='${filefullname}' src='${rootdir.concat(filefullname) }' style="width: 160px;height: 100px;border-radius: 5px;"/>
            </div>
            <!-- 每行显示5张图片 -->
            <!--索引+1-->
    </c:when>
    <c:otherwise>
        暂无数据
    </c:otherwise>
</c:choose>
</body>
</html>
