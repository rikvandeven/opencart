<div id="bannertarget1"></div>
<!-- CONTENT -->
<div class="container">
  <div class="section">

    <!--   Icon Section   -->
    <div class="row">
      <div class="col s12 m4">
        <div class="icon-block">
          <h2 class="center"><i class="medium material-icons grey-text text-darken-3">thumb_up</i></h2>
          <h5 class="center">Sustainable</h5>

          <p class="light">Shop for what you like, while we worry about selecting brands which produce fair, using organic or recycled materials.</p>
        </div>
      </div>

      <div class="col s12 m4">
        <div class="icon-block">
          <h2 class="center"><i class="medium material-icons grey-text text-darken-3">verified_user</i></h2>
          <h5 class="center">Secure</h5>
          <p class="light">No need to worry about your payment, you can make safe payments using Paypal or iDeal.</p>
        </div>
      </div>

      <div class="col s12 m4">
        <div class="icon-block">
          <h2 class="center"><i class="medium material-icons grey-text text-darken-3">redeem</i></h2>
          <h5 class="center">Shipping</h5>

          <p class="light">Order for 75 euro's and get free shipping. Every order will be wrapped as a gift.</p>
        </div>
      </div>

    </div>

  </div>
</div>

<div class="container">
  <div class="section">
    <div class="row">
      <div class="col s12 center">
        <h4><?php echo $heading_title; ?></h4>
      </div>
    </div>

    <div class="row">
    <?php for ($i = 0; $i < 3 && $i < sizeof($products); $i++) { ?>
      <div class="col s12 m6 l4">
        <div class="card">
          <div class="card-image">
            <img src="<?php echo $products[$i]['thumb']; ?>" alt="<?php echo $products[$i]['name']; ?>" title="<?php echo $products[$i]['name']; ?>" class="img-responsive" /></a>
          </div>
          <div class="card-content">
            <span class="card-title truncate"><?php echo $products[$i]['name']; ?></span>
          </div>
          <div class="card-action">

              <span class="left">
                <?php if (!$products[$i]['special']) { ?>
                <?php echo $products[$i]['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $products[$i]['special']; ?></span> <span class="price-old"><?php echo $products[$i]['price']; ?></span>
                <?php } ?>
              </span>

            <a href="<?php echo $products[$i]['href']; ?>"><span class="icon-text right">View</span></a>
          </div>
        </div>
      </div>
    <?php } ?>
    </div>
  </div>
</div>

<div id="bannertarget2"></div>

<div class="container">
  <div class="section">
    <div class="row">
      <div class="col s12 center">
        <h4><?php echo $heading_title; ?></h4>
      </div>
    </div>

    <div class="row">
      <?php for ($i = 3; $i < 6 && $i < sizeof($products); $i++) { ?>
      <div class="col s12 m6 l4">
        <div class="card">
          <div class="card-image">
            <img src="<?php echo $products[$i]['thumb']; ?>" alt="<?php echo $products[$i]['name']; ?>" title="<?php echo $products[$i]['name']; ?>" class="img-responsive" /></a>
          </div>
          <div class="card-content">
            <span class="card-title truncate"><?php echo $products[$i]['name']; ?></span>
          </div>
          <div class="card-action">

              <span class="left">
                <?php if (!$products[$i]['special']) { ?>
                <?php echo $products[$i]['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $products[$i]['special']; ?></span> <span class="price-old"><?php echo $products[$i]['price']; ?></span>
                <?php } ?>
              </span>

            <a href="<?php echo $products[$i]['href']; ?>"><span class="icon-text right">View</span></a>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>