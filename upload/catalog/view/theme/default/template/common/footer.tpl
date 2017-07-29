
<footer class="page-footer grey darken-3">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <h5 class="white-text">Connect with us</h5>
        <ul class="list-unstyled">
          <li><a class="grey-text text-lighten-3" href="https://www.facebook.com/pages/SAMA-SAMA/363212557129278" target="blank"><i class="fa fa-facebook-square"></i><span class="footer-text">&nbsp;Facebook</span></a>/li>
          <li><a class="grey-text text-lighten-3" href="https://instagram.com/samasamashop" target="blank"><i class="fa fa-instagram"></i><span class="footer-text">&nbsp;Instagram</span></a></li>
          <li><a class="grey-text text-lighten-3" href="https://www.pinterest.com/samasamashop" target="blank"><i class="fa fa-pinterest"></i><span class="footer-text">&nbsp;Pinterest</span></a></li>
          <li><a class="grey-text text-lighten-3" href="mailto:info@sama-sama-shop.com"><i class="fa fa-envelope"></i><span class="footer-text">&nbsp;Mail</span></a></li>
        </ul>
      </div>

      <?php if ($informations) { ?>
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text"><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a class="grey-text text-lighten-3" href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
    </div>
  </div>
  <div class="footer-copyright grey darken-4">
    <div class="container">
      © 2017 Copyright Sama-Sama Shop
    </div>
  </div>
</footer>


<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->


    <script style="display:none"><!--
    (function($){
        $(function(){
            $('#bannertarget1').append($('#bannersource1'));
            $('#bannertarget1>div').removeAttr('style');
            $('#bannertarget2').append($('#bannersource2'));
            $('#bannertarget2>div').removeAttr('style');
            $('#bannertarget3').append($('#bannersource3'));
            $('#bannertarget3>div').removeAttr('style');
            $('.button-collapse').sideNav();
            $('.parallax').parallax();
            $(".dropdown-button").dropdown();
            $('.modal').modal();
        }); // end of document ready
    })(jQuery); // end of jQuery name space

    //--></script>


</body></html>