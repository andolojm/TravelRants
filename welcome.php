<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<div id="pages">

<?php include('navbar.php');

    foreach($login->errors as $error){
        echo '<p>ERROR:<br />';
        echo $error . '</p>';
    }

    if(empty($login->errors)){
        header('Location: ./index.php');
    }

?>
</div>

<!-- END CONTENT -->
</body>

</html>
