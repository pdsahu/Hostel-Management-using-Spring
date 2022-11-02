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

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Room Details</p>

						<c:if test="${ not empty errorMsg }">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<c:if test="${ not empty succMsg }">
							<p class="fs-3 text-center text-success" role="alert">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<table class="table">
							<thread>
							<tr>
								<th scope="col">Room No</th>
								<th scope="col">Number of Beds</th>
								<th scope="col">Room Type</th>
								<th scope="col">Sharing</th>
								<th scope="col">Fees</th>
								<th scope="col">Action</th>

							</tr>

							</thread>
							<tbody>
								<%
								RoomDao dao2 = new RoomDao(DBConnect.getConn());
								List<Rooms> list2 = dao2.getAllRooms();
								for (Rooms d : list2) {
								%>
								<tr>
									<td><%=d.getRoomNo()%></td>
									<td><%=d.getNoOfBeds()%></td>
									<td><%=d.getRoomType()%></td>
									<td><%=d.getSharString()%></td>

									<td><%=d.getFees()%></td>
									<td><a href="edit_room.jsp?roomNo=<%=d.getRoomNo()%>"
										class="btn btn-primary">Edit</a> <a href="../deleteRoom?roomNo=<%=d.getRoomNo() %> "
										class="btn btn-sm btn-danger">Delete</a></td>


								</tr>


								<%
								}
								%>

							</tbody>

						</table>
					</div>
				</div>
				<a href="index.jsp" class="btn btn-sm btn-danger col-md-12 ">Back</a>
			</div>

		</div>
	</div>

</body>
</html>