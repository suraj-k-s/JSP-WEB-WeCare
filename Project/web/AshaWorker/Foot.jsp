      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <p>© 2021 all Rights Reserved. <a href="">WE-CARE>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="../Assets/Template/AS/js/jquery.min.js"></script>
      <script src="../Assets/Template/AS/js/popper.min.js"></script>
      <script src="../Assets/Template/AS/js/bootstrap.bundle.min.js"></script>
      <script src="../Assets/Template/AS/js/jquery-3.0.0.min.js"></script>
      <script src="../Assets/Template/AS/js/plugin.js"></script>
      <!-- sidebar -->
      <script src="../Assets/Template/AS/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="../Assets/Template/AS/js/custom.js"></script>
      <script src="../Assets/Template/AS/js/owl.carousel.min.js"></script>
      <script src="../Assets/Template/AS/https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         $(document).ready(function() {
           var owl = $('.owl-carousel');
           owl.owlCarousel({
             margin: 10,
             nav: true,
             loop: true,
             responsive: {
               0: {
                 items: 1
               },
               600: {
                 items: 2
               },
               1000: {
                 items: 3
               }
             }
           })
         })
      </script>
      
      <script>
         $('.content').hide();
         
         $('.slider').click(function() {
         $(this).next('.content').slideToggle();
         this.toggle = !this.toggle;
         $(this).children("span").text(this.toggle ? "-" : "+");
         return false;
         });
      </script>
   </body>
</html>


         </div>
      </footer>