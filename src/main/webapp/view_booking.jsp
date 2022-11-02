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
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/3.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<c:if test="${empty studentObj}">
		<c:redirect url="student_login.jsp"></c:redirect>
	</c:if>


	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Booking
							Details</p>

						<table class="table">

							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Booking Date</th>
									<th scope="col">Email</th>
									<th scope="col">PhoneNo</th>
									
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
								<%
								 Student student  = (Student) session.getAttribute("studentObj");
								BookYourRoomDao dao = new BookYourRoomDao(DBConnect.getConn());
								RoomDao dao2 = new RoomDao(DBConnect.getConn());
								List<BookYourRoom> list = dao.getAllbookingsbyLogin(student.getRollNo());

								for (BookYourRoom book : list) {
									
								%>

								<tr>
									<td><%= book.getFullName() %></td>
									<td><%= book.getBookingDate() %></td>
									<td><%= book.getEmail() %></td>
									<td><%= book.getPhnNo() %></td>
									
									<td>
									 <%
									  if("pending".equals(book.getStatus())){%>
										  
										  <a href="#" class="btn btn-sm btn-warning">pending</a>
									  <%}else{%>
										  <%= book.getStatus() %>
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
			<div class="col-md-3 p-3">
				<img alt="" src="img/6.jpg">
			</div>

		</div>



	</div>
</body>
</html>