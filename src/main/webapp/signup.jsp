<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Register Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text center">New Student Registration</p>

						<c:if test="${not empty sucMsg }">
							<p style="font: italic; font-size: 15px;"
								class="text-center text-success">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<form action="student_register" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label><input required
								style="text-transform: uppercase;"	name="fullName" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label><input required
									maxlength="8" name="dob" type="text" class="form-control"
									placeholder="ddmmyyyy">
							</div>

							<div class="mb-3">
								<label class="form-label">Blood Group</label><input required
									maxlength="3" style="text-transform: uppercase;"
									name="bloodgroup" type="text" class="form-control" list="options">
								<datalist id="options">
									<select aria-live="assertive">
										<option>O</option>
										<option>A-</option>
										<option>A+</option>
										<option>B-</option>
										<option>B+</option>
										<option>AB-</option>
										<option>AB+</option>
										<option>none</option>
									</select>
								</datalist>
							</div>

							<div class="mb-3">
								<label class="form-label">Email Id</label><input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Phone No</label><input required
									maxlength="10" name="phoneno" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">ADDRESS</label><input required
									name="address" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label><input required
								minlength="4" name="password" type="password" class="form-control">
							</div>

							<c:if test="${not empty errorMsg }">
								<p style="font: italic; font-size: 15px;"
									class="text-center text-danger ">${errorMsg}</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>

							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
							<br>

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>