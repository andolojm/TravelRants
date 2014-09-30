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
        echo '<h3>' . $displayTitle . '</h3><br />';
        echo '<p class="blue">' . $displayText . '</p><br />';

        //now we'll generate the date of the post - this SHOULD be the format that MySQL is looking for
        $date = date('Y-m-d');

        //get the posting user's ID
        $userId = "";

        //database all that fun stuff we prepared above.
        $mysqli = new mysqli('localhost','root','','TravelSite');

        //ensure connection
        if($mysqli->connect_errno){
            header('Location: ./error.php');
        } else {
            //if we're connected, prepare and execute the query
            $query = $mysqli->prepare("INSERT INTO Rant (userId,destId,date,title,text) VALUES (?,?,?,?,?)");

            $query->bind_param("iisss", $userId,$id,$date,$title,$text);
            $query->execute();
        }
    }
?>

<a href="reviews.php?id=<?php echo $id;?>" class="btn btn-primary">Check this review out on the main page</a>
</div>
</div>
</body>
</html>