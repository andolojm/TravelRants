<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<!-- CAROUSEL -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="../img/wp14.jpg" alt="First slide" onclick="$('#myCarousel').carousel('next');">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Paris</h1>
                    <p><a class="btn btn-lg btn-primary" href="reviews.php?id=4" role="button">Baguettes and Escargot</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="../img/wp15.jpg" alt="Second slide" onclick="$('#myCarousel').carousel('next');">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Rome</h1>
                    <p><a class="btn btn-lg btn-primary" href="reviews.php?id=1" role="button">When in Rome... Get Lost!</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="../img/wp3.jpg" alt="Third slide" onclick="$('#myCarousel').carousel('next');">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Outer Space</h1>
                    <p><a class="btn btn-lg btn-primary" href="reviews.php?id=2" role="button">Extreme Jet-lag</a></p>
                </div>
            </div>
        </div>
    </div>
    <!--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>-->
    </div>
<!-- END CAROUSEL -->

<?php include('loginForm.php');
    include('signupForm.php');?>

<!-- END CONTENT -->
</body>

</html>