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

.row {
	padding-bottom: 25px;
}
</style>
</head>

<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty adminObj}">
	    <c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	
	<div class="container p-5">
		<p class="text center fs-3">Admin Dashboard</p>

		<c:if test="${not empty errorMsg }">
			<p class="text-center text-danger fs-3">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>


		<div class="row">
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-bed"></i><br>
						<p class="fs-4 text-center">
							Total Number of Rooms <br>10
						</p>
						<a href="addRoom.jsp" class="btn btn-primary">Add Rooms Details</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-users"></i><br>
						<p class="fs-4 text-center">
							Total Students <br>50
						</p>
						<a href="../signup.jsp" class="btn btn-primary">Register New Student</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row" data-bs-toggle="modal" data-bs-target="#exampleModal">
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-door-open"></i>
						<p class="fs-4 text-center">
							Room Category <br>5
						</p>
						<a href="#" class="btn btn-primary">Add New Category</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card paint-card">
					<div class="card-body text-center">
						<i class="fa-solid fa-file-invoice"></i>
						<p class="fs-4 text-center">
							Total room Bookings <br>25
						</p>
					</div>
				</div>
			</div>
		</div>

	</div>
	
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Room Category</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="../addRoomType" method="post">
      <div class="form-group">
      <label> Enter Room Category</label>
      <input type="text" name="roomTypeName" class="form-control">
      
      </div>
      <div class="text-center mt-3">
      <button type="submit" class="btn btn-primary">Add</button>
      </div>
      
      </form>
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save Changes</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>