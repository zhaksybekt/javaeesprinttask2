<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="login-box">
  <h2>Login</h2>
  <form method="post" action="login">
    <div class="user-box">
      <input type="text" name="email" required="">
      <label>Email</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Password</label>
    </div>
    <div class="user-box">
      <input type="submit" value="Login" style="text-decoration: none;">
    </div>
    <div class="user-box">
      <a href="register.jsp">Dont have account?</a>
    </div>
  </form>
</div>
<style>

  .login-box {
    margin-top: 200px;
    margin-left: 35%;
    width: 400px;
    position: relative;
    background: #fff;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    padding: 30px;
    border-radius: 10px;
    text-align: center;
  }

  .login-box h2 {
    margin-top: 0;
    font-weight: 600;
    text-transform: uppercase;
  }

  .user-box {
    position: relative;
    margin-bottom: 20px;
  }

  .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #333;
    border: none;
    border-bottom: 1px solid #ccc;
    outline: none;
    background: transparent;
  }

  .user-box label {
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #666;
    pointer-events: none;
    transition: 0.5s;
  }

  .user-box input:focus ~ label,
  .user-box input:valid ~ label {
    top: -20px;
    font-size: 12px;
    color: #03a9f4;
  }
</style>
</body>
</html>