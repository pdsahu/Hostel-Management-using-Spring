<%@page import="com.dao.BookYourRoomDao"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.RoomDao"%>
<%@page import="com.entity.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookYourRoom"%>
<%@page import="com.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty adminObj}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="col-md-9">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-4 fw-bold text-center text-success">Booking Details</p>

				<table class="table">

					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Booking Date</th>
							<th scope="col">Email</th>
							<th scope="col">PhoneNo</th>
							<th scope="col">Room Number</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						Rooms r = (Rooms) session.getAttribute("roomObj");
						BookYourRoomDao dao = new BookYourRoomDao(DBConnect.getConn());
						List<BookYourRoom> list = dao.getAllbookingsbyRoom(r.getRoomNo());
						for (BookYourRoom book : list) {
						%>
						<tr>
							<td><%=book.getFullName()%></td>
							<td><%=book.getBookingDate()%></td>
							<td><%=book.getEmail()%></td>
							<td><%=book.getPhnNo()%></td>
							<td><%=book.getRoomNo()%></td>
							<td><%=book.getStatus() %></td>
							<td>
							
							<%
							if("pending".equals(book.getStatus())){%>
								<a href="comment.jsp?id=<%=book.getId()%>" class="btn btn-sm btn-success">Confirm booking</a>
								
							<%}else{%>
								<a href="#" class="btn btn-sm btn-success disabled">Confirm booking</a>
								
							<%}
							%>
							
							
							</td>
						</tr>

						<%
						}
						%>


					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>