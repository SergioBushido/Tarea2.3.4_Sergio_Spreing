<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Articles</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />

	<fmt:setLocale value="en_US" scope="session" />

	<div class="page-title">Articles</div>

	<c:forEach items="${articles}" var="article">
		<div class="product-preview-container">
			<ul>
				<li>Id:${article.id}</li>
				<li>Title:${article.title}</li>
				<li>Abstract:${article.abstracts}</li>
				<li>Content:${article.content}</li>
				<li>
					<a style="color: red;"
						href="${pageContext.request.contextPath}/article/id=${article.id}">Edit Article</a>
				</li>
			</ul>
		</div>
	</c:forEach>
	<br />

	<jsp:include page="_footer.jsp" />

</body>
</html>