<?php
define('TITLE', 'Login');
require("../common/header.html");

print '<h1>Login Form</h1>
        <p>Users can update tickets for events.</p>';

if ( isset($_POST['submitted'] ) ) {
    if ( ( !empty($_POST['email'] ) && ( !empty( $_POST['password']) ) ) ) {
        if ( (strtolower($_POST['email']) == 'me@example.com') && ( $_POST['password'] == 'testpass') ) { // Correct!

            session_start();
            $_SESSION['email']      = $_POST['email'];
            $_SESSION['loggedin']   = time();
            ob_end_clean();
            header('Location: display_stats.php');
            exit();
        } else {
            print '<p>The submitted email address and password do not match those on file!<br /> Go Back and try again.</p>';
        }

    } else {
        print '<p>Please make sure you enter both on email address and a password!<br />Go back and try again.</p>';
    }

} else {
    print '<form action="login.php" method="post">
        <p>Email Address: <input type="text" name="email" size="20" /></p>
        <p>Password: <input type="password" name="password" size="20" /></p>
        <p><input type="submit" name="submit" value="Log In!" /></p>
        <p><input type="hidden" name="submitted" value="true" />
        </form>';
}

require("../common/footer.html");
?>