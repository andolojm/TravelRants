<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<div id="pages">
<?php

    $mysqli = new mysqli('localhost','root','','TravelSite');

    //ensure connection
    if($mysqli->connect_errno){

    } else {
        //prep and execute query
        $query = $mysqli->prepare("SELECT id, name, imageUrl, description FROM Destination");
        $query->execute();

        //bind query returns to variables
        $query->bind_result($id,$name,$imageUrl,$description);

        //this is, for all practical purposes, a foreach through the dataset
        while($query->fetch()){
            echo '<div id="box' . $id . '" >
                <div class="thumbnail">
                    <img src="' . $imageUrl . '" alt="...">
                    <div class="caption">
                    <h3>' . $name . '</h3>
                    <p>' . $description . '</p>
                    <p>
                        <a href="reviews.php?id=' . $id . '" class="btn btn-primary" role="button">View Reviews</a>
                    </p>
                    </div>
                </div>
            </div>';
        }
    }
?>
</div>
</body>
</html>