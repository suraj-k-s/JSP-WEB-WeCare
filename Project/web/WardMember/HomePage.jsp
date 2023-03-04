<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>WE-CARE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="../Assets/Template/wm/css/bootstrap-responsive.css" rel="stylesheet">
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
					<h1 class="brand"><a href="HomePage.jsp">WE-CARE</a></h1>
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
	<!-- Header area -->
	<div id="header-wrapper" class="header-slider">
		<header class="clearfix">
                    <div class="container">
			<div class="span4 offset1">
					<div>
						<h2> <strong>GRAMAPANCHAYATH</strong></h2>
						<p>
							Gram Panchayat is a basic village-governing institute in Indian villages. 
                                                        It is a democratic structure at the grass-roots level in India. It is a political institute, acting as cabinet of the village.
                                                        The Gram Sabha work as the general body of the Gram Panchayat.				</p>
					</div>
				</div>
                    </div>
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="main-flexslider" class="flexslider">
							<ul class="slides">
								<li>
									<p class="home-slide-content">
										<strong>creative</strong> and passion
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										Eat and drink <strong>design</strong>
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										We loves <strong>simplicity</strong>
									</p>
								</li>
							</ul>
						</div>
						<!-- end slider -->
					</div>
				</div>
			</div>
		</header>
	</div>
	<!-- spacer section -->
	<section class="spacer green">
		<div class="container">
			<div class="row">
				<div class="span6 alignright flyLeft">
					<blockquote class="large">
						Together We Can  <cite></cite>
					</blockquote>
				</div>
				<div class="span6 aligncenter flyRight">
					<i class="icon-coffee icon-10x"></i>
				</div>
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	<!-- section: team -->
	<section id="about" class="section">
		<div class="container">
			<h4>Who We Are</h4>
			<div class="row">
				<div class="span4 offset1">
					<div>
						<h2> <strong>FUNCTIONS</strong></h2>
						<p>
							The works of Gram Panchayat includes : - The construction and maintenance of water resources,road
                                                        ,drainage,school buildings and other common property resources.
                                                        Levying and collecting local taxes.
                                                       Executing government schemes related to generating employment in the village.				</p>
					</div>
				</div>
				<div class="span6">
					<div class="aligncenter">
						<img src="../Assets/Template/wm/img/icons/creativity.png" alt="" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span2 offset1 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="../Assets/Template/wm/img/team/img-1.jpg" alt="" />
						<h3>John </h3>
						<p>
							PRESIDENT
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="../Assets/Template/wm/img/team/img-2.jpg" alt="" />
						<h3>Manu</h3>
						<p>
							SECRETARY
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="../Assets/Template/wm/img/team/img-3.jpg" alt="" />
						<h3>Nikhil</h3>
						<p>
							MEMBER
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="../Assets/Template/wm/img/team/img-4.jpg" alt="" />
						<h3>Akhil</h3>
						<p>
							SUPPORTING
						</p>
					</div>
				</div>
				<div class="span2 flyIn">
					<div class="people">
						<img class="team-thumb img-circle" src="../Assets/Template/wm/img/team/img-5.jpg" alt="" />
						<h3>Stephen </h3>
						<p>
							COORDINATOR
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- end section: team -->
	<!-- section: services -->
	<section id="services" class="section orange">
		<div class="container">
			<h4>Services</h4>
			<!-- Four columns -->
			<div class="row">
				<div class="span3 animated-fast flyIn">
					<div class="service-box">
						<img src="../Assets/Template/wm/img/icons/laptop.png" alt="" />
						<h2>LocalBody Website</h2>
						<p>
							LSGD e-Services ccm Public Grievance Redress covid-19 .
						</p>
					</div>
				</div>
				<div class="span3 animated flyIn">
					<div class="service-box">
						<img src="../Assets/Template/wm/img/icons/lab.png" alt="" />
						<h2>e-Services </h2>
						<p>
							Establishment. Sthapana - Service Pension · 
                                                        Sthapana - Kerala Panchayat Employees Provident Fund(KPEPF) ·
                                                        Sthapana -Kerala Municipal Employees Provident Fund
						</p>
					</div>
				</div>
				<div class="span3 animated-fast flyIn">
					<div class="service-box">
						<img src="../Assets/Template/wm/img/icons/camera.png" alt="" />
						<h2>Works</h2>
						<p>
							Maintenance and construction of water resources, roads
                                                        drainage, School buildings and CPR (common property resources). 
                                                        Levy and collect local taxes. Execute government schemes related to employment..
						</p>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- end section: services -->
        <section class="spacer bg3">
		<div class="container">
			<div class="row">
				<div class="span6 aligncenter flyLeft">
                                    <img src="../Assets/Template/wm/img/bg/panchayat.jpg" alt="nothing" />
				</div>
                            <div  class="span6 aligncenter flyRight">
                                    <img src="../Assets/Template/wm/img/bg/pm.png" alt="nothing" />
				</div>
				
			</div>
		</div>
	</section>
	<!-- end spacer section -->
	<!-- section: blog -->
	<section id="blog" class="section">
		<div class="container">
			<h4>Our Panchayath</h4>
			<!-- Three columns -->
			<div class="row">
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="../Assets/Template/wm/img/blog/img1.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-file icon-2x"></i>
							<span class="date">June 19, 2021</span>
							<span class="tags"><a href="#">Design</a>, <a href="#">Blog</a></span>
						</div>
						<div class="entry-content">
							<h5><strong><a href="#">Role</a></strong></h5>
							<p>
								The Panchayati Raj Institutions are the nodal point at the district level. 
                                                                Their role is to help plan,
                                                                coordinate, monitor and wherever
                                                                required regulate the implementation 
                                                                of various national programmes.
							</p>
							<a href="#" class="more">Read more</a>
						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="../Assets/Template/wm/img/blog/img2.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-file icon-2x"></i>
							<span class="date">June 19, 2021</span>
							<span class="tags"><a href="#">Design</a>, <a href="#">News</a></span>
						</div>
						<div class="entry-content">
							<h5><strong><a href="#">Gram Sabha Functions</a></strong></h5>
							<p>
								Gram Sabha performs legislative functions at village level just as state legislature performs the same at the state level.  
							</p>
							<a href="#" class="more">Read more</a>
						</div>
					</div>
				</div>
				<div class="span3">
					<div class="home-post">
						<div class="post-image">
							<img class="max-img" src="../Assets/Template/wm/img/blog/img3.jpg" alt="" />
						</div>
						<div class="post-meta">
							<i class="icon-file icon-2x"></i>
							<span class="date">June 22, 2021</span>
							<span class="tags"><a href="#">Design</a>, <a href="#">Tips</a></span>
						</div>
						<div class="entry-content">
							<h5><strong><a href="#">SVAMITVA </a></strong></h5>
							<p>
								Survey of Villages Abadi and Mapping with Improvised Technology in Village Areas	
					</p>
							<a href="#" class="more">Read more</a>
						</div>
					</div>
				</div>
				
			</div>
			<div class="blankdivider30"></div>
			<div class="aligncenter">
				<a href="#" class="btn btn-large btn-theme">More </a>
			</div>
		</div>
	</section>

	<!-- end spacer section -->
	<!-- section: contact -->
	<section id="contact" class="section green">
		<div class="container">
			<h4>Get in Touch</h4>
			<p>
				Gram Panchayat (English: Village council) is a basic village-governing institute in Indian villages. 
                                It is a democratic structure at the grass-roots level in India. It is a political institute, acting as cabinet of the village.
                                The Gram Sabha work as the general body of the Gram Panchayat.
                                The members of the Gram Panchayat are elected by the Gram Sabha.[
			</p>
			<div class="blankdivider30">
			</div>
					</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					<ul class="social-networks">
						<li><a href="#"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
					</ul>
					<p class="copyright">
						&copy; WECARE. All rights reserved.
						<div class="credits">
							<!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Maxim
              -->
							 <a href="https://bootstrapmade.com/"></a>
						</div>
					</p>
				</div>
			</div>
		</div>
		<!-- ./container -->
	</footer>
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
        <script src="../Assets/Template/wm/js/jquery.js"></script>
	<script src="../Assets/Template/wm/js/jquery.scrollTo.js"></script>
	<script src="../Assets/Template/wm/js/jquery.nav.js"></script>
	<script src="../Assets/Template/wm/js/jquery.localScroll.js"></script>
	<script src="../Assets/Template/wm/js/bootstrap.js"></script>
	<script src="../Assets/Template/wm/js/jquery.prettyPhoto.js"></script>
	<script src="../Assets/Template/wm/js/isotope.js"></script>
	<script src="../Assets/Template/wm/js/jquery.flexslider.js"></script>
	<script src="../Assets/Template/wm/js/inview.js"></script>
	<script src="../Assets/Template/wm/js/animate.js"></script>
	<script src="../Assets/Template/wm/js/custom.js"></script>
	<script src="../Assets/Template/wm/js/contactform/contactform.js"></script>

</body>

</html>
