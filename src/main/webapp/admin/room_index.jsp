<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
body {
	background-color: #E9E6E6;
}

.row {
	padding-bottom: 25px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger">


		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><i
				class="fa-solid fa-hotel"></i> HOSTEL</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"><i class="fa-solid fa-house"></i>
							HOME</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_room.jsp"><i
							class="fa-solid fa-key"></i> ROOM REPORT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"> BACK</a></li>

				</ul>

				<form class="d-flex">
					<div class="dropdown">
						<button class="btn btn-light dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expaned="false">Admin</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
						</ul>

					</div>

				</form>

			</div>
		</div>
	</nav>

	<div class="container p-5">
		<p class="text center fs-3">Room Details</p>
		<div class="row">
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-bed"></i><br>
						<p class="fs-4 text-center">
							Total Number of Rooms <br>10
						</p>
						<a href="#" class="btn btn-primary">Total Room in Hostel</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-users"></i><br>
						<p class="fs-4 text-center">
							STUDENT BOOKINGS<br>50
						</p>
						<a href="student_booking.jsp" class="btn btn-primary">View Booking </a>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>