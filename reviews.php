<?php include('header.php');
      include('sanitizeText.php'); ?>

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
            $query = $mysqli->prepare("SELECT name FROM Destination WHERE id = " . $id);
            $query->execute();
            $query->bind_result($destName);
            while($query->fetch()){
                echo '<h1 id="pageTitle">' . $destName . '</h1><hr>';
            }

            //prep and execute query
            $query = $mysqli->prepare("SELECT id, date, userId, title, text FROM Rant WHERE destId = ? ORDER BY date DESC");
            $query->bind_param("i", $id);
            $query->execute();

            //bind query returns to variables
            $query->bind_result($id,$date,$userId,$title,$text);

            $count = 0;

            //this is, for all practical purposes, a foreach through the dataset
            while($query->fetch()){
                echo '<div id="review' . $id . '" class="reviewContent">
                        <h3>' . $title . '</h3>
                        <p class="content">' . $text . '</p>
                        <h5 class="date">Posted on ' . $date . ' by ' . $userId . '</h5>
                    </div>';
                $count += 1;
            }
            if($count == 0){
                echo "<p>There aren't any rants about this destination. Guess it's a pretty cool place.</p>";
            }
        }
    }
?>
</div>
</div>
</body>
</html>