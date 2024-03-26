<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blogs</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />

	<fmt:setLocale value="en_US" scope="session" />

	<div class="page-title">Blogs</div>

	<c:forEach items="${blogs}" var="blog">
		<div class="product-preview-container">
			<ul>
				<li>Id:${blog.id}</li>
				<li>Title:${blog.title}</li>
				<li>Abstract:${blog.date}</li>
				<li>
					<a style="color: red;"
						href="${pageContext.request.contextPath}/blog/id=${blog.id}">Edit Blog</a>
				</li>
			</ul>
		</div>
	</c:forEach>
	<br />

	<jsp:include page="_footer.jsp" />

</body>
</html>