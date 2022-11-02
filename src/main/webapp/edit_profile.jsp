<%@page import="com.Db.DBConnect"%>
<%@page import="com.dao.RoomDao"%>
<%@page import="com.entity.Rooms"%>
<%@page import="com.entity.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<c:if test="${empty studentObj}">
		<c:redirect url="student_login.jsp"></c:redirect>
	</c:if>
	

	<div class="container fluid backImg p-3">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	
	
	<div class="container p-3 offset-md-3">
		<div class="row">
			<div class="col-md-7">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">EDIT STUDENT DETAILS</p>
						
						<c:if test="${not empty succMsg }">
								<p style="font-size:20px; font-style: italic; " class="text-center text-success">${succMsg}</p>
								<c:remove var="succMsg" scope="session" />
							</c:if>
						
						<form class="row g-3" action="editProfile" method="post">

							<div class="col-md-6">
								<label  class="form-label">ROLL NO</label>
								<input
									required readonly type="text" class="form-control" value="${studentObj.rollNo}" name="rollNo">
									
							</div>

							<div class="col-md-6">
								<label class="form-label">FULL NAME</label><input
								style="text-transform: uppercase;"	required type="text" class="form-control" value="${studentObj.full_name}" name="full_name">
							</div>

							

							<div class="col-md-6">
								<label class="form-label">DOB</label><input
									required readonly type="text" class="form-control" value="${studentObj.dob}" name="dob" placeholder="ddmmyyy">
							</div>
							
							<div class="col-md-6">
								<label class="form-label">BLOOD GROUP</label><input
									required type="text" maxlength="3" style="text-transform: uppercase;" class="form-control" value="${studentObj.bloodgroup}" name="bloodgroup">
							</div>

							<div class="col-md-6">
								<label class="form-label">E-MAIL</label><input
									required type="email"  class="form-control" value="${studentObj.email}" name="email">
							</div>

							<div class="col-md-6">
								<label class="form-label">PHONE NO</label><input
									maxlength="10" required type="text" class="form-control" value="${studentObj.phoneno}"
									name="phoneno">
							</div>



							<div class="col-md-6">
								<label>HOME ADDRESS</label>
								<textarea required name="address"
									class="
									form-control" style="text-transform: uppercase;" rows="3" >${studentObj.address}</textarea>

							</div>
							
							<c:if test="${not empty errorMsg }">
							<p style="font-style:italic; font-size:20px;" class="text-center text-danger ">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
							<input type="hidden" value="${studentObj.rollNo }" name="rollNo">
							<c:if test="${ empty studentObj }">
								<a href="student_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">UPDATE</a>
							</c:if>

							<c:if test="${ not empty studentObj }">
								<button class="col-md-6 offset-md-3 btn btn-success">UPDATE</button>
							</c:if>
							
							
						
							
							
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>