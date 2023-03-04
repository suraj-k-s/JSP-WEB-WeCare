<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>WE-CARE</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../Assets/Template/family/assets/img/favicon.png" rel="icon">
  <link href="../Assets/Template/family/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../Assets/Template/family/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../Assets/Template/family/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../Assets/Template/family/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../Assets/Template/family/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../Assets/Template/family/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../Assets/Template/family/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../Assets/Template/family/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: MeFamily - v4.7.0
  * Template URL: https://bootstrapmade.com/family-multipurpose-html-bootstrap-template-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.html">Me &amp; Family</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active" href="HomePage.jsp">Home</a></li>
          <li><a href="ChangePassword.jsp">Change Password</a></li>
          <li><a href="EditProfile.jsp">Profile Edit</a></li>
          <li><a href="MyProfile.jsp">Profile</a></li>
          <li class="dropdown"><a href="#"><span>Family Member</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="FamilyMember.jsp">Member</a></li>
              <li><a href="MemberProfile.jsp">Profile</a></li>
              
              <li><a href="VaccineMember.jsp">Vaccine</a></li>
              <li><a href="ViralDiseaseDetection.jsp">Viral Disease Detection</a></li>
              <li><a href="memberhealth.jsp">Member Health</a></li>
            </ul>
          </li>
          <li><a href="../Guest/Login.jsp">Logout</a></li>
        </ul>
       
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(../Assets/Template/family/assets/img/slide/slide-1.jpg)">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(../Assets/Template/family/assets/img/slide/slide-2.jpg)">
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(../Assets/Template/family/assets/img/slide/slide-3.jpg)">
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= My & Family Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>Me & Family</h2>
          <p>According to Sociologists, the family is an intimate domestic group of people related to one another by bonds of blood, sexual mating, or legal ties. It has been a very resilient social unit that has survived and adapted through time.        </div>

        <div class="row content">
          <div class="col-lg-6">
            <img src="../Assets/Template/family/assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              family, a group of persons united by the ties of marriage, blood, or adoption, constituting a single household and interacting with each other in their respective social positions, 
              usually those of spouses,parents, children, and siblings.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Family is the primary source of learning.</li>
              <li><i class="ri-check-double-line"></i> Family provides enormous positive energy and can make you conquer many things.</li>
              <li><i class="ri-check-double-line"></i> A family gives us stability in various ways.</li>
            </ul>
            <p>
              The family group should be distinguished from a household, which may include boarders and roomers sharing a common 
              residence. It should also be differentiated from a kindred (which also concerns blood lines), because a kindred may
              be divided into several households. Frequently the family is not differentiated from the marriage pair, but the essence
              of the family group the parent-child relationship, which may be absent from many marriage pairs.


            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End My & Family Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="row">
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-laptop"></i></div>
            <h4 class="title"><a href="">Family</a></h4>
            <p class="description">?It didn?t matter how big our house was; it mattered that there was love in it.? ? Peter Buffett</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Home</a></h4>
            <p class="description">?Call it a clan, call it a network, call it a tribe, call it a family: Whatever you call it, whoever you are, you need one.? ? Jane Howard</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-bounding-box"></i></div>
            <h4 class="title"><a href="">Family Bond</a></h4>
            <p class="description">?The bond that links your true family is not one of blood, but of respect and joy in each other?s life.? ? Richard Bach</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-broadcast"></i></div>
            <h4 class="title"><a href="">Heaven</a></h4>
            <p class="description"> ?A happy family is but an earlier heaven.? ? George Bernard Shaw</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-camera"></i></div>
            <h4 class="title"><a href="">Happiness</a></h4>
            <p class="description">?Happiness is having a large, loving, caring, close-knit family in another city.? ? George Burns</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box">
            <div class="icon"><i class="bi bi-diagram-3"></i></div>
            <h4 class="title"><a href="">Strength </a></h4>
            <p class="description">?The strength of a family, like the strength of an army, lies in its loyalty to each other.? ? Mario Puzo

</p>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

    <!-- ======= Recent Photos Section ======= -->
    <section id="recent-photos" class="recent-photos">
      <div class="container">

        <div class="section-title">
          <h2>Recent Photos</h2>
          <p>"Being on a family vacation has never felt so good..Let's always vacay together.Love you to the beach and back.Dad jokes up ahead."


</p>
        </div>

        <div class="recent-photos-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-1.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-1.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-2.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-2.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-3.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-3.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-4.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-4.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-5.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-5.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-6.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-6.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-7.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-7.jpg" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a href="../Assets/Template/family/assets/img/recent-photos/recent-photos-8.jpg" class="glightbox"><img src="../Assets/Template/family/assets/img/recent-photos/recent-photos-8.jpg" class="img-fluid" alt=""></a></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Recent Photos Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>Me & Family</h3>
      <p>It didn?t matter how big our house was; it mattered that there was love in it.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; Copyright <strong><span>WE-CARE</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/family-multipurpose-html-bootstrap-template-free/ -->
        Designed by <a href="#">We-Care</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>