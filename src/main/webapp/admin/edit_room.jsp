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

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card"></div>
				<div class="card-body">
					<p class="fs-3 text-center">Editt Room Details</p>
					<c:if test="${ not empty errorMsg }">
						<p class="fs-3 text-center text-danger">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>

					<c:if test="${ not empty succMsg }">
						<p class="fs-3 text-center text-success" role="alert">${succMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<%
					String roomNo = request.getParameter("roomNo");
					RoomDao dao2 = new RoomDao(DBConnect.getConn());
					Rooms d = dao2.getRoomsbyId(roomNo);
					%>

					<form action="../updateRoom" method="post">
						<div class="mb-3">
							<label class="form-label">Room No</label><input type="text"
								required name="roomNo" class="form-control"
								value=<%=d.getRoomNo()%>>
						</div>
						<div class="mb-3">
							<label class="form-label">Number of Beds</label><input
								type="text" required name="noOfBed" class="form-control"
								value=<%=d.getNoOfBeds()%>>
						</div>
						<div class="mb-3">
							<label class="form-label">Room Type</label><select
								name="roomType" required class="form-control">
								<option><%=d.getRoomType()%></option>
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
								required name="sharing" class="form-control"
								value=<%=d.getSharString()%>>
						</div>
						<div class="mb-3">
							<label class="form-label">Fees</label><input type="text" required
								name="fees" class="form-control" value=<%=d.getFees()%>>
						</div>
						<input type="hidden" name="roomNo" value=<%=d.getRoomNo()%>>


						<button type="submit" class="btn btn-primary col-md-12">Update</button>
						<a href="index.jsp" class="btn btn-sm btn-danger col-md-12 ">Back</a>
					</form>
				</div>
			</div>


		</div>
	</div>

</body>
</html>