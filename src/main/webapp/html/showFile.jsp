<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
<h3 align="center">文件列表展示</h3>
<c:choose>
    <c:when test="${not empty fileList }">
        <!--索引-->
        <c:set var="index" value='1'></c:set>
        <c:forEach items="${fileList }" var="file">
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
                <!-- 文件的全路径 -->
                <a href="${pageContext.request.contextPath}/user/fileDownload.do?fileName=${filefullname}">下载</a>
            </div>
            <!-- 每行显示5张图片 -->
            <c:if test="${index%5==0 }">
                <br>
            </c:if>
            <!--索引+1-->
            <c:set var="index" value='${index+1 }'></c:set>
        </c:forEach>
    </c:when>
    <c:otherwise>
        暂无数据
    </c:otherwise>
</c:choose>
<br><br><br>
<img src="${path2}"/>
</body>
</html>

