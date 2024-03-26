<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Codes</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />

    <fmt:setLocale value="en_US" scope="session" />

    <div class="page-title">Codes</div>

    <c:forEach items="${codes}" var="code">
        <div class="product-preview-container">
            <ul>
                <li>Id: ${code.id}</li>
                <li>Package Name: ${code.packageName}</li>
                <li>File: ${code.file}</li>
                <li>
                    <a style="color: red;" href="${pageContext.request.contextPath}/code/id=${code.id}">Edit Code</a>
                </li>
            </ul>
        </div>
    </c:forEach>
    <br />

    <jsp:include page="_footer.jsp" />

</body>
</html>
