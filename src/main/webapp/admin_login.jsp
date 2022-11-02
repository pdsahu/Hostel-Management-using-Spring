<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin login page</title>
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
						<p class="fs-4 text center">Admin Login</p>


						<c:if test="${not empty succMsg }">
							<p style="font: italic; font-size: 15px;"
								class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>



						<form action="adminLogin" method="post">
							<div class="mb-3">
								<label class="form-label">email</label><input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">password</label><input required
									name="password" type="password" class="form-control">
							</div>

							<c:if test="${not empty errorMsg }">
								<p style="font: italic; font-size: 15px;"
									class="text-center text-danger ">${errorMsg}</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>

							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>



</body>
</html>