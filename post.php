<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<div id="pages">
<div class="center">

<?php
    $id = $_GET['id'];
    $count = 0; //ensure we only get one result - so we can handle a return of 0, or many, records

    //sanitization checks   |   side note: max id is currently 100000. change this when the business takes off
    if(is_numeric($id) && $id >= 1 && $id <= 100000){

        $mysqli = new mysqli('localhost','root','','TravelSite');

        //ensure connection
        if($mysqli->connect_errno){
            echo '<p>Server is currently offline, broken, or on fire. Please come back later.</p>';
        } else {

            $query = $mysqli->prepare("SELECT name, description FROM Destination WHERE id = " . $id);

            $query->execute();

            $query->bind_result($destName,$destDescription);

            while($query->fetch()){
                echo '<h1 id="pageTitle">' . $destName . '</h1>';
                echo '<p>' . $destDescription . '</p>';
                echo '<hr />';
                $count += 1;
            }

        }
    }

    //handle bad requests - 0 records, and many records
    //and then finally handle 1 record, as intended
    if($count == 0){
        echo '<h1 id="pageTitle">Invalid destination ID.</h1>';
        echo '<p id="subtitle">Please use the destinations page to navigate this area of the site.</p>';
    } else if ($count > 1){
        echo '<h1 class="emergency">Hold on, the database is on fire again. Please come back later.</h1>';
    } else if ($count == 1) {
        include 'postRant.php';
    }
?>
</div>
</div>
</body>
</html>