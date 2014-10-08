<?php include('header.php');
      include('sanitizeText.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<div id="pages">
<div class="center">

<h1>Thanks for your submission!</h1>
<hr />

<?php
    $id = $_GET['id'];
    $count = 0; //ensure we only get one result - so we can handle a return of 0, or many, records

    //sanitization checks   |   side note: max id is currently 100000. change this when the business takes off
    if(is_numeric($id) && $id >= 1 && $id <= 100000){

        //rip that post info out of the post variables and clean it up
        $title = sanitize_html_string($_POST['postTitle']);
        $text = sanitize_html_string($_POST['postText']);

        //display that clean, sexy input. GGWP, XSS
        echo '<h3>' . $title . '</h3><br />';
        echo '<p class="blue">' . $text . '</p><br />';

        //now we'll generate the date of the post - this SHOULD be the format that MySQL is looking for
        $date = date('Y-m-d');

        //let's get that user id - and panic if we don't have one
        if(isset($_SESSION['user_id'])){
            $userId = $_SESSION['user_id'];

            //database all that fun stuff we prepared above.
            $mysqli = new mysqli('localhost','root','','TravelSite');

            //ensure connection
            if($mysqli->connect_errno){
                header('Location: ./error.php');
            } else {
                //if we're connected, prepare and execute the query
                $query = $mysqli->prepare("INSERT INTO rant (userId,destId,date,title,text) VALUES (?,?,?,?,?)");

                $query->bind_param("iisss", $userId,$id,$date,$title,$text);
                $query->execute();
                echo '<a href="reviews.php?id=' . $id . '" class="btn btn-primary">Check this review out on the main page</a>';
            }

        //User isn't logged in! Panic and scream and be generally disappointed in your users
        } else {
            echo '<p class="blue">Thanks for the rant, but you\'re not logged in. Please log in to submit a rant.</p>';
        }
    }
?>

</div>
</div>
</body>
</html>