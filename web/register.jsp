<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Регистрация</title>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<form method="post" action="register">
  E-mail:    <input type="email" name="email" required><br>
  Password : <input type="password" name="password" required><br>
  FullName : <input type="text" name="full_name" required><br>
  <input type="submit" value="Sign up">
</form>
<style>
  body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
  }

  h1 {
    text-align: center;
    color: #333;
  }

  form {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    margin: 200px auto;
    max-width: 400px;
    padding: 30px;
  }

  input[type=text], input[type=password], input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type=submit] {
    background-color: #808080;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    padding: 12px 20px;
    width: 100%;
  }

  input[type=submit]:hover {
    background-color: #bc6bff ;
  }
</style>
</body>
</html>