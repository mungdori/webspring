<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>startup</title>


<link rel="stylesheet" href="/resources/css/main.css" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/b838745d-d764-4da6-b3f8-b45750a8f167.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/9d539685-7465-4bfa-b86e-5295b8222e06.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://product-image.kurly.com/cdn-cgi/image/format=auto/banner/main/pc/img/c22f86b2-3bb3-4974-ac4e-0668e69501c9.jpg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
 

</body>
</html>
