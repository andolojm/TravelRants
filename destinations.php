<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<div id="pages">
<?php

    $mysqli = new mysqli('localhost','root','','TravelSite');

    //ensure connection
    if($mysqli->connect_errno){
        echo '<p>Server is currently offline, broken, or on fire. Please come back later.</p>';
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
                        <a href="reviews.php?id=' . $id . '" class="btn btn-primary" role="button">View Rants</a>';

                        //only add post button if logged in
                        if($login->isUserLoggedIn()){
                            echo '
                        <a href="post.php?id=' . $id . '" class="btn btn-info" role="button">Post a Rant</a>';
                        } //Apparently the line break here makes a difference, adds spacing between the buttons

                        //regardless, finish the div
                        echo '
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