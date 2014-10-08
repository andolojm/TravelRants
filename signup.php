<?php include('header.php'); ?>

<!-- CONTENT -->
<body>
<?php include('navbar.php');?>

<div id="pages">

<?php
    include('classes/Registration.php');

    $reg = new Registration();

    foreach($reg->errors as $error){
        echo '<p>ERROR:<br />';
        echo $error . '</p>';
    }

    if(empty($reg->errors)){
        header('Location: ./login.php?firsttime=true');
    }
?>
</div>

<!-- END CONTENT -->
</body>

</html>