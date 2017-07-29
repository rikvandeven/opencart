<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

  <!-- For Materialize CSS -->
  <!--Import Google Icon Font-->
  <!--<link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">-->
  <link type="text/css" rel="stylesheet" href="fonts/material-icons.css"  media="screen,projection"/>
  <!--Import materialize.css-->

  <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <!-- For Materialize CSS -->
  <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

  <link type="text/css" rel="stylesheet" href="catalog/view/theme/default/stylesheet/stylesheet.css" media="screen,projection"/>


</head>
<body>

<header>
<!-- Dropdown Structure for Mobile view -->
<?php foreach ($categories as $key=>$category) { ?>
  <?php if ($category['children']) { ?>
    <ul id="m<?php echo $key; ?>Dropdown" class="dropdown-content">
      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
        <?php foreach ($children as $child) { ?>
        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
        <?php } ?>
      <?php } ?>
    </ul>
  <?php } ?>
<?php } ?>

<div class="navbar navbar-fixed">
  <nav>
    <div class="nav-wrapper grey darken-4">
      <a href="<?php echo $home; ?>" class="brand-logo"><img src="/image/catalog/logo.png" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <?php foreach ($categories as $key=>$category) { ?>
          <?php if ($category['children']) { ?>
            <li><a class="dropdown-button" href="#!" data-activates="m<?php echo $key; ?>Dropdown">Brands<i class="material-icons right">arrow_drop_down</i></a></li>
          <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
        <?php } ?>
      </ul>

      <ul class="side-nav" id="nav-mobile">
        <?php foreach ($categories as $key=>$category) { ?>
          <?php if ($category['children']) { ?>
            <li class="no-padding">
              <ul class="collapsible" data-collapsible="accordion">
                <li>
                  <a class="collapsible-header"><i class="material-icons right">arrow_drop_down</i>Brands</a>
                  <div class="collapsible-body">
                    <ul>
                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                        <?php } ?>
                      <?php } ?>
                    </ul>
                  </div>
                </li>
              </ul>
            </li>
          <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>

</header>