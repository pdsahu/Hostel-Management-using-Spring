<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student login</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

#set {
	position: absolute;
	right: 24px;
	transform: translate(0, -50%);
	top: 56%;
	cursor: pointer;
}

.fa {
	font-size: 18px;
	color: #7a797e;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<c:if test="${not empty sucMsg }">
			<p style="font: italic; font-size: 15px;"
				class="text-center text-success ">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">



						<p class="fs-4 text center">Student Login</p>


						<form action="studentLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email Id</label><input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password/DOB</label><input required
									name="password" type="password" class="form-control"
									id="newpassword"><span id="set"><i id="seteye"
									onclick="set()" class="fa fa-eye aria-hidden="true"></i></span>
							</div>
							<c:if test="${not empty errorMsg }">
								<p style="font: italic; font-size: 15px;"
									class="text-center text-danger">${errorMsg}</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
							<br> <br> Don't have an Account?<a href="signup.jsp"
								class="clink text-decoration-none"> create one </a> <br> <a
								href="forgot_password.jsp" class="clink text-decoration-none">
								forgot password </a>

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		var state = false;
		function set() {

			if (state) {
				document.getElementById("newpassword").setAttribute("type",
						"password");
				document.getElementById("seteye").style.color = '#7a797e';
				state = false;
			} else {
				document.getElementById("newpassword").setAttribute("type",
						"text");
				document.getElementById("seteye").style.color = '#5887ef';
				state = true;
			}
		}
	</script>
</body>
</html>