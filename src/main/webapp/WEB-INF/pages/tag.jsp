<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />

	<fmt:setLocale value="en_US" scope="session" />

	<div class="page-title">Tag</div>

	<c:forEach items="${tag}" var="tag">
		<div class="product-preview-container">
			<ul>
				<li>Id:${tag.id}</li>
				<li>Title:${tag.title}</li>
				<li>Abstract:${tag.abstracts}</li>
				<li>Content:${tag.content}</li>
				<li>
					<a style="color: red;"
						href="${pageContext.request.contextPath}/tag/id=${tag.id}">Edit Tag</a>
				</li>
			</ul>
		</div>
	</c:forEach>
	<br />

	<jsp:include page="_footer.jsp" />

</body>
</html>ml>