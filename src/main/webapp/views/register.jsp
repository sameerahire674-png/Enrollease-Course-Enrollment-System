<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #667eea, #764ba2);
}

.register-container {
    width: 400px;
    margin: 60px auto;
    padding: 30px;
    background: white;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
    text-align: center;
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

.input-group {
    margin-bottom: 15px;
    text-align: left;
}

.input-group label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
}

.input-group input {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

.input-group input:focus {
    border-color: #667eea;
    outline: none;
}

.btn {
    width: 100%;
    padding: 10px;
    background: #667eea;
    border: none;
    color: white;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
}

.btn:hover {
    background: #5a67d8;
}

.login-link {
    margin-top: 15px;
}

.login-link a {
    color: #667eea;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<div class="register-container">
    <h2>Create Account</h2>

    <form action="saveUser" method="post">

        <div class="input-group">
            <label>Full Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>
        </div>

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required>
        </div>

        <div class="input-group">
            <label>Confirm Password</label>
            <input type="password" name="confirmPassword" placeholder="Confirm password" required>
        </div>

        <button type="submit" class="btn">Register</button>

        <p class="login-link">
            Already have an account? <a href="login">Login</a>
        </p>

    </form>
</div>

</body>
</html>