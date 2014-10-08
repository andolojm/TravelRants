<!-- LOGIN -->
<div id="login" class="form">
    <h2>Want to post your rant?</h2>
    <h3>Log in here.</h3>
    <form method="post" action="welcome.php?login=true">
        <p class="formParagraph">Username:</p>
        <input type="text" id="user_name" name="user_name" />

        <p class="formParagraph">Password:</p>
        <input type="password" id="user_password" name="user_password" />

        <br /><br />
        <input type="submit" class="btn btn-primary" value="Log me in!">
    </form>
    <br />
    <a href="#signup" class="btn btn-info" onclick="toggleSignup()">I need an account.</a>
</div>
<!-- END LOGIN -->
