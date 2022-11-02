<%@page import="com.entity.Rooms"%>
<%@page import="com.dao.RoomDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.RoomCategory"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.RoomCategoryDao"%>
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
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card"></div>
				<div class="card-body">
					<p class="fs-3 text-center">Add Room</p>
					<c:if test="${ not empty errorMsg }">
						<p class="fs-3 text-center text-danger">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>

					<c:if test="${ not empty succMsg }">
						<p class="fs-3 text-center text-success" role="alert">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<form action="../addRoom" method="post">
						<div class="mb-3">
							<label class="form-label">Room No</label><input type="text"
								required name="roomNo" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Number of Beds</label><input
								type="text" required name="noOfBed" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Room Type</label><select
								name="roomType" required class="form-control">
								<option>--select--</option>
								<%
								RoomCategoryDao dao = new RoomCategoryDao(DBConnect.getConn());
								List<RoomCategory> list = dao.getAllRoomCategories();
								for (RoomCategory s : list) {
								%>
								<option><%=s.getRoomType()%></option>
								<%
								}
								%>

							</select>
						</div>
						<div class="mb-3">
							<label class="form-label">Sharing</label><input type="text"
								required name="sharing" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Fees</label><input type="text" required
								name="fees" class="form-control">
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						<div class="container" style="padding-top: 10px;">
							<a href="index.jsp" class="btn btn-sm btn-danger">Back</a>
						</div>
					</form>
				</div>
			</div>


		</div>
	</div>

</body>
</html>