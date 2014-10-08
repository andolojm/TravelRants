<!-- HEADER -->
    <div class="navbar navbar-default navbar-static-top" role="navigation" id="header">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" id="collapser">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="glyphicon glyphicon-align-justify"></span>
                    <span class="whitetext">Navigation</span>
                </button>
                <a class="navbar-brand" href="index.php">TravelRants</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="destinations.php">Destinations</a></li>
                    <?php if(!$login->isUserLoggedIn()){
                            echo '<li><a href="login.php">Log In</a></li>';
                        } else {
                            echo '<li><a href="#">' . $_SESSION['user_name'] . '</a></li>';
                            echo '<li><a href="logout.php?logout=true">Log Out</a></li>';
                        }
                    ?>
                </ul>
            </div>
        </div>
    </div>
<!-- END HEADER -->