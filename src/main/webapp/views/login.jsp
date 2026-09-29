<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #4facfe, #00f2fe);
}

.login-container {
    width: 350px;
    margin: 100px auto;
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
    border-color: #4facfe;
    outline: none;
}

.btn {
    width: 100%;
    padding: 10px;
    background: #4facfe;
    border: none;
    color: white;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
}

.btn:hover {
    background: #00c6ff;
}

.register-link {
    margin-top: 15px;
}

.register-link a {
    color: #4facfe;
    text-decoration: none;
}

.register-link a:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<div class="login-container">
    <h2>Login</h2>

    <form action="login" method="post">
        
        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password" required>
        </div>

        <button type="submit" class="btn">Login</button>

        <p class="register-link">
            Don't have an account? <a href="register">Register</a>
        </p>

    </form>
</div>

</body>
</html>