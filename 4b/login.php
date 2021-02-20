<?php
require 'functions.php';

if (isset($_POST["login"])) {

  login($_POST);
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="./assets/css/login.css">
</head>
 <style>
  body{
    background-image : url('data:image/png;base64,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') 
  }
  </style>
</head>
<body>

  <div class="container">
    <form class="form-container" method="POST" >
      <p class="text2">
        Dumb Cars
      </p>
      <p class="text3">
        The place where you get your best cars, we provide the best cars with the best prices!
      </p>
      <?php if (isset ($error)):?>
        <p style ="color : red;font_style:italic;">Email/Pasword salah</p>
        <?php endif; ?>
      <div class="form-input">

        <div class="login-input">
          <img src="./assets/image/mail.png" class="login-label">
          <input type="email" id="email" placeholder="Enter your email" name="email">
        </div>
        <div class="login-input">
          <img src="./assets/image/lock.png" class="login-label">
          <input type="password" id="password" placeholder="Enter your password" name ="pasword">
          <img src="./assets/image/eye-open.png" class="login-label eye" id="togglePassword" onclick="myFunction()">
        </div>
        <a href="./forgot.html" class="forgot-password">
          <p>Forgot password?</p>
        </a>
        <button type="submit" class="btn-1" name = "login">Login
        </button>
        <footer class="sign-up">
          <span>
            Don’t have an account? Let’s
          </span>
          <a href="./signup.php">Sign Up</a>
        </footer>
      </div>
    </form>
  </div>
  <script src="./assets/js/main.js"></script>
</body>
</html>