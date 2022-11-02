<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.b {
	margin-top: 25px;
	margin-bottom: 25px;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/1.jpg" class="d-block w-100" alt="..." height=500px>
			</div>
			<div class="carousel-item">
				<img src="img/3.jpg" class="d-block w-100" alt="..." height=500px>
			</div>
			<div class="carousel-item">
				<img src="img/4.jpg" class="d-block w-100" alt="..." height=500px>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="b">
		<p class="text-center" style="font-size: 5vw;">
			<b> Key Features of our Hostel</b>
		</p>
		<div class="container overflow-hidden">
			<div class="row gy-5">
				<div class="col-6">
					<div class="p-3 border bg-light">Hostel Easy Accessible
						Location</div>
				</div>
				<div class="col-6">
					<div class="p-3 border bg-light">Hostel Healthy Food Menu</div>
				</div>
				<div class="col-6">
					<div class="p-3 border bg-light">CHostel Affordable Charges</div>
				</div>
				<div class="col-6">
					<div class="p-3 border bg-light">Custom column padding</div>
				</div>
			</div>
		</div>

	</div>


	<%@include file="component/footer.jsp"%>
</body>
</html>