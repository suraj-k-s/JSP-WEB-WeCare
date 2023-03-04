<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>WE-CARE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="../Assets/Template/wm/css/bootstrap-responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="../Assets/Template/form.css">
	<link href="../Assets/Template/wm/css/style.css" rel="stylesheet">
	<link href="../Assets/Template/wm/color/default.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- =======================================================
    Theme Name: Maxim
    Theme URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
	======================================================= -->
        
        <style>
            .nav .dropdown ul {
  display: block;
  position: absolute;
  left: 14px;
  top: calc(100% + 30px);
  margin: 0;
  padding: 10px 0;
  z-index: 99;
  opacity: 0;
  visibility: hidden;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  transition: 0.3s;
}
.nav .dropdown ul li {
  min-width: 200px;
  list-style: none;
}
.nav .dropdown ul a {
  padding: 10px 20px;
  font-size: 14px;
  text-transform: none;
  font-weight: 500;
  text-decoration: none;
}
.nav .dropdown ul a i {
  font-size: 12px;
}
.nav .dropdown ul a:hover, .nav .dropdown ul .active:hover, .nav .dropdown ul li:hover > a {
  color: #006fbe;
}
.nav .dropdown:hover > ul {
  opacity: 1;
  top: 100%;
  visibility: visible;
}
.nav .dropdown .dropdown ul {
  top: 0;
  left: calc(100% - 30px);
  visibility: hidden;
}
.nav .dropdown .dropdown:hover > ul {
  opacity: 1;
  top: 0;
  left: 100%;
  visibility: visible;
}
@media (max-width: 1366px) {
  .nav .dropdown .dropdown ul {
    left: -90%;
  }
  .nav  .dropdown .dropdown:hover > ul {
    left: -100%;
  }
}

        </style>
</head>

<body>
	<!-- navbar -->
	<div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<!-- Responsive navbar -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
					<h1 class="brand"><a href="index.html">WE-CARE</a></h1>
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<ul id="menu-main" class="nav">
							<li><a title="team" href="#about"></a></li>
                                                        <li><a href="HomePage.jsp">Home</a></li>
							<li><a title="services" href="EditProfile.jsp">Profile Edit</a></li>
                                                        <li><a title="contact" href="changePassword.jsp">Change Password</a></li>
                                                        <li class="dropdown"><a href="#"><span>Family </span> <i class="bi bi-chevron-down"></i></a>
                                                            <ul>
                                                              <li><a href="AcceptedFamily.jsp">Accepted Family</a></li>
                                                              <li><a href="RejectedFamily.jsp">Rejected Family</a></li>
                                                              <li><a href="FamilyMembers.jsp">Family Members</a></li>
                                                              <li><a href="FamilyVaccine.jsp">Family Vaccine</a></li>
                                                              <li><a href="NewFamilyRegistration.jsp">New Family Registration</a></li>
                                                              <li><a href="ViewFamily.jsp">View Family</a></li>
                                                            </ul>
                                                          </li>
							<li><a title="works" href="MyProfile.jsp">Profile</a></li>
							<li><a title="blog" href="Ashaworker.jsp">Asha Worker</a></li>
							<li><a title="contact" href="ContainmentZoneView.jsp">Containment Zone</a></li>
							<li><a title="contact" href="../Guest/Login.jsp">Logout</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
        <br><br><br><br><br><br><br><br>