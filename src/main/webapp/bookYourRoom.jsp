<%@page import="com.dao.BookYourRoomDao"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.RoomDao"%>
<%@page import="com.entity.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookYourRoom"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Your Room</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
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
<body>
	<%@include file="component/navbar.jsp"%>

	<c:if test="${empty studentObj}">
		<c:redirect url="student_login.jsp"></c:redirect>
	</c:if>



	<div class="container fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">BOOK YOUR ROOM</p>

						<c:if test="${not empty sucMsg }">
							<p style="color: red; font-size: 50%; font-style: italic;"
								class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>


						<form class="row g-3" action="bookYourRoom" method="post">

							<input type="hidden" name="rollNo" value="${studentObj.rollNo}">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">FULL NAME</label><input
									required type="text" class="form-control" name="fullName">
							</div>

							<div class="col-md-6">
								<label class="form-label"> GENDER </label> <select
									class="form-control" name="gender" required>
									<option style="text-align: center;">--GENDER--</option>
									<option value="male">MALE</option>
									<option value="female">FEMALE</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">AGE</label><input
									required type="number" class="form-control" name="age">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">BOOKING DATE</label><input
									required type="date" class="form-control" name="bookingDate">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">E-MAIL</label><input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">PHONE NO</label><input
									maxlength="10" required type="nubmer" class="form-control"
									name="phnNo">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">SHARING</label><input
									required type="text" class="form-control" name="sharing">
							</div>


							<div class="col-md-6">
								<label for="inputpassword4" class="form-label"> ROOM
									TYPE</label><select required class="form-control" name="roomNo">

									<option value="">--SELECT--</option>
									<%
									RoomDao dao = new RoomDao(DBConnect.getConn());
									List<Rooms> list = dao.getAllRooms();
									for (Rooms d : list) {
									%>
									<option value="<%=d.getRoomNo()%>"><%=d.getRoomNo()%>(<%=d.getRoomType()%>)
									</option>

									<%
									}
									%>




								</select>

							</div>

							<div class="col-md-6">
								<label>HOME ADDRESS</label>
								<textarea required name="address"
									class="
									form-control" rows="3" cols=""></textarea>

							</div>

							<c:if test="${not empty errorMsg }">
								<p class="text-center text-danger fs-3">${errorMsg}</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>


							<c:if test="${ empty studentObj }">
								<a href="student_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">SUBMIT</a>
							</c:if>

							<c:if test="${ not empty studentObj }">
								<button class="col-md-6 offset-md-3 btn btn-success">SUBMIT</button>
							</c:if>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>