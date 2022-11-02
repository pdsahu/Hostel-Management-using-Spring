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
<title>View Profile Page</title>
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
						<p class="text-center fs-3">VIEW STUDENT DETAILS</p>
						
						
						<form class="row g-3" action="editProfile" method="post">

							<div class="col-md-6">
								<label  class="form-label">ROLL NO</label>
								<input
									required readonly type="text" class="form-control" value="${studentObj.rollNo}" name="rollNo">
									
							</div>

							<div class="col-md-6">
								<label class="form-label">FULL NAME</label><input
									required readonly type="text" class="form-control" style="text-transform: uppercase;" value="${studentObj.full_name}" name="full_name">
							</div>

							

							<div class="col-md-6">
								<label class="form-label">DOB</label><input
									required readonly type="text" class="form-control" style="text-transform: uppercase;" value="${studentObj.dob}" name="dob" placeholder="ddmmyyy">
							</div>
							
							<div class="col-md-6">
								<label class="form-label">BLOOD GROUP</label><input
									required readonly type="text" class="form-control" style="text-transform: uppercase;" value="${studentObj.bloodgroup}" name="bloodgroup">
							</div>

							<div class="col-md-6">
								<label class="form-label">E-MAIL</label><input
									required readonly type="email"  class="form-control" value="${studentObj.email}" name="email">
							</div>

							<div class="col-md-6">
								<label class="form-label">PHONE NO</label><input
									maxlength="10" required readonly type="text" class="form-control" value="${studentObj.phoneno}"
									name="phoneno">
							</div>



							<div class="col-md-6">
								<label>HOME ADDRESS</label>
								<textarea required readonly name="address"
									class="
									form-control" rows="3" style="text-transform: uppercase;" >${studentObj.address}</textarea>

							</div>
							
							
							
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>