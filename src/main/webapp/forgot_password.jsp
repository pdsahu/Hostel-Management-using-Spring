<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Page</title>
<%@include file="component/allcss.jsp"%>



<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

#set {
	position: absolute;
	right: 24px;
	transform: translate(0, -50%);
	top: 76%;
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

	

	<div class="container p-4">
		<div class="row">
			<c:if test="${not empty succMsg }">
				<p style="font: italic; font-size:15px;"
					class="text-center text-success">${succMsg}</p>
				<c:remove var="succMsg" scope="session" />
			</c:if>
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">


					<p class="text-center fs-3">Change Password</p>




					<div class="card-body">
						<form action="studentForgotPassword" method="post">
						
							<div class="mb-3">
								<label>Roll No</label> <input type="number"
								name="sid" class="form-control" 
									required>
							</div>
							
							<div class="mb-3">
								<label>DOB</label> <input type="text" maxlength="8"
								name="dob" class="form-control" placeholder="ddmmyyyy"
									required>
							</div>
						
							<div class="mb-3">
								<label>Enter New Password</label> <input type="password"
								minlength="4"	name="forgotpassword" class="form-control" id="newpassword"
									required><span id="set"><i id="seteye"
									onclick="set()" class="fa fa-eye aria-hidden="true"></i></span>
							</div>


							<c:if test="${not empty errorMsg }">
								<p style="font: italic; font-size:15px;"
									class="text-center text-danger">${errorMsg}</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>

							<input type="hidden" value="${studentObj.rollNo }" name="sid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
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