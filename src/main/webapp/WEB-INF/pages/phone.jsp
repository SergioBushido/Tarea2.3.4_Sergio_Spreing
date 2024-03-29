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

	<div class="page-title">Phone</div>

	<c:forEach items="${phone}" var="article">
		<div class="product-preview-container">
			<ul>
				<li>Id:${phone.id}</li>
				<li>Title:${phone.title}</li>
				<li>Abstract:${phone.abstracts}</li>
				<li>Content:${artiphonecle.content}</li>
				<li>
					<a style="color: red;"
						href="${pageContext.request.contextPath}/phone/id=${phone.id}">Edit phone</a>
				</li>
			</ul>
		</div>
	</c:forEach>
	<br />

	<jsp:include page="_footer.jsp" />

</body>
</html>ml>