<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>

  <main>
    <!-- About Us page -->
    <div class="nero3">
      <div class="nero3__heading">
        <span class="nero3__bold">About</span> us
      </div>
      <p class="nero3__text">
      </p>
    </div>
  </main>

<div id="content" ><!-- Content Starts -->
<div class="container" ><!-- Container Starts -->

<div class="col-md-12" ><!-- col-md-12 Starts -->

<div class="box" ><!-- Box Starts -->

<?php

$get_about_us = "select * from about_us"; //selects from about_us table

$run_about_us = mysqli_query($con,$get_about_us);

$row_about_us = mysqli_fetch_array($run_about_us);

$about_heading = $row_about_us['about_heading']; //sets the variable to the table attributes

$about_short_desc = $row_about_us['about_short_desc'];

$about_desc = $row_about_us['about_desc'];

?>

<h1> <?php echo $about_heading; ?> </h1>

<p class="lead"> <?php echo $about_short_desc; ?> </p>

<p> <?php echo $about_desc; ?> </p>

</div><!-- box Ends -->

</div><!-- col-md-12 Ends -->



</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

</body>
</html>
