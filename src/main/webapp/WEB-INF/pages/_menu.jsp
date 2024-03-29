<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Page</title>
</head>
<body>
	<div class="menu-container">
		<a href="${pageContext.request.contextPath}/">Home</a> | 
		<a href="${pageContext.request.contextPath}/api/v1/articles">Articles</a>
		<a href="${pageContext.request.contextPath}/api/v1/blogs">Blogs</a>
	    <a href="${pageContext.request.contextPath}/api/v1/code">Code</a> 
	    <a href="${pageContext.request.contextPath}/api/v1/detail">Detail</a>
	    <a href="${pageContext.request.contextPath}/api/v1/phone">Phone</a>
	    <a href="${pageContext.request.contextPath}/api/v1/project">Project</a>
	    <a href="${pageContext.request.contextPath}/api/v1/tag">Tag</a>
	    <a href="${pageContext.request.contextPath}/api/v1/user">User</a>
	    


	</div>
</body>
</html>