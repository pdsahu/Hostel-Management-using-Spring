<%@page import="com.dao.BookYourRoomDao"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.RoomDao"%>
<%@page import="com.entity.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookYourRoom"%>
<%@page import="com.entity.Student"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/3.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty adminObj}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Booking Status</p>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-5">${sucMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookYourRoomDao dao = new BookYourRoomDao(DBConnect.getConn());
						BookYourRoom book = dao.getBookingById(id);
						%>
						<form class="row" action="../UpdateStatus" method="post">
							<div class="col-md-6">
								<label>Student Name</label><input type="text" readonly
									value="<%=book.getFullName()%>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Email</label><input type="text" readonly
									value="<%=book.getEmail()%>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Booking Date</label><input type="text" readonly
									value="<%=book.getBookingDate()%>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Phone no</label><input type="text" readonly
									value="<%=book.getPhnNo()%>" class="form-control">
							</div>
							<div class="col-md-12">
								<br> <label>Confirm Booking</label>
								<textarea required name="comment" class="form-control" row="3"
									cols=""></textarea>
							</div>
							<input type="hidden" name="id" value="<%=book.getId()%>"><input
								type="hidden" name="rid" value="<%=book.getRoomNo()%>">
							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Update</button>
						</form>
					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>