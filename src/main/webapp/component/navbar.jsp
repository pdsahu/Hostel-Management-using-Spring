<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-hotel"></i> HOSTEL</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty studentObj }">

					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">Select Your Role</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="admin_login.jsp">Admin
									Login</a></li>
							<li><a class="dropdown-item" href="student_login.jsp">Student
									Login</a></li>

						</ul>
					</div>



					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">ROOMS</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="bookYourRoom.jsp"><i class="fa-solid fa-ticket"></i>
							BOOK YOUR ROOM</a></li>

				</c:if>



				<c:if test="${not empty studentObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="bookYourRoom.jsp"><i class="fa-solid fa-ticket"></i>
							BOOK YOUR ROOM</a>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_booking.jsp"><i class="fa-solid fa-ticket"></i>
							VIEW STATUS</a>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_profile.jsp"><i class="fa-solid fa-id-card"></i>
							VIEW PROFILE</a>
					<li class="dropdown active"><a
						class="btn btn-danger dropdown-toggle" href="#" id="navbarDropdownMenuButton1"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							&nbsp&nbsp<i
							class="fa-solid fa-circle-user"></i>&nbsp&nbsp&nbsp  ${studentObj.full_name}


							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="edit_profile.jsp">Edit Profile</a></li>
							<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
							<li><a class="dropdown-item" href="studentLogout">Logout</a></li>
						</ul></li>


				</c:if>

				<!--    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>  -->
			</ul>

		</div>
	</div>
</nav>