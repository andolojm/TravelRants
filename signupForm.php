
<!-- SIGNUP -->
<div id="signup" style="display: none;" class="form">
    <h2>Get full access.</h2>
    <h3>Sign up here.</h3>
    <p>It's free and easy, unlike your travel experiences.</p>
    <form method="post" action="signup.php">

        <!-- the user name input field uses a HTML5 pattern check -->
        <p class="formParagraph">Username:</p>
        <input id="login_input_username" class="login_input" type="text" pattern="[a-zA-Z0-9]{2,64}" name="user_name" required />

        <!-- the email input field uses a HTML5 email type check -->
        <p class="formParagraph">User's email:</p>
        <input id="login_input_email" class="login_input" type="email" name="user_email" required />

        <p class="formParagraph">Password: (min. 6 characters)</p>
        <input id="login_input_password_new" class="login_input" type="password" name="user_password_new" pattern=".{6,}" required autocomplete="off" />

        <p class="formParagraph">Repeat password:</p>
        <input id="login_input_password_repeat" class="login_input" type="password" name="user_password_repeat" pattern=".{6,}" required autocomplete="off" />

        <br /><br />
        <input type="submit"  class="btn btn-primary" name="register" value="Register" />
    </form>
    <br />
    <a href="#login" class="btn btn-info" onclick="toggleSignup()">I have an account already.</a>

</div>
<!-- END SIGNUP -->