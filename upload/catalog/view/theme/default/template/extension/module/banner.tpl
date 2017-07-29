<!-- BANNER 1 -->

<?php foreach ($banners as $key=>$banner) { ?>

<div class="banner" style="display:none" id="bannersource<?php echo $key; ?>">
  <?php if ($banner['link']) { ?>
    <div id="index-banner" class="parallax-container">
      <div class="section no-pad-bot">
        <div class="container">
          <br><br>
          <div class="row center">
            <a href="<?php echo $banner['link']; ?>" class="btn-large waves-effect waves-light teal lighten-1"><?php echo $banner['title']; ?></a>
          </div>
          <br><br>
        </div>
      </div>
      <div class="parallax"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"></div>
    </div>
  <?php } else { ?>
    <div id="index-banner" class="parallax-container">
      <div class="parallax"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"></div>
    </div>
  <?php } ?>
</div>
<?php } ?>

<!--
<div id="index-banner" class="parallax-container">
  <div class="section no-pad-bot">
    <div class="container">
      <br><br>
      <h1 class="header center teal-text text-lighten-2">Welcome</h1>
      <div class="row center">
        <h5 class="header col s12 light">We are passionate about bringing you organic and fair produced fashion and toys</h5>
      </div>
      <div class="row center">
        <a href="products.html" id="shopping" class="btn-large waves-effect waves-light teal lighten-1">Start shopping</a>
      </div>
      <br><br>

    </div>
  </div>
  <div class="parallax"><img src="image/cache/catalog/Banners/craffox-banner-website-1200x443.jpg" alt="Unsplashed background img 2"></div>
</div>
-->