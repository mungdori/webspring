<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info</title>
<link rel="stylesheet" href="/resources/css/main.css" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<form action="/user/inbody" method="post">
	
	<input type="text" name="height">
	<input type="text" name="weight">
	<input type="text" name="fat">
	<input type="text" name="muscle">
	
	<button type="submit" class="btn-inbody">제출</button>
	</form>



</body>

</html>


