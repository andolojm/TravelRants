<?php include('header.php'); ?>

<!-- CONTENT -->
<body>

<?php include('navbar.php'); ?>

<div id="forms">
<?php
    if(isset($_GET['firsttime'])){
        echo '<h3 class="welcome">Account created successfully! You can now log in.</h3><hr>';
    }

    include('loginForm.php');
    include('signupForm.php');?>

</div>

</body>
</html>