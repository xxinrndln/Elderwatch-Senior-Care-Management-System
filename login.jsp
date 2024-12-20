<%-- 
    Document   : login
    Created on : 13 Dec 2024, 8:38:01 am
    Author     : nurin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/background.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        .container {
            width: 90%;
            max-width: 900px;
            background: rgba(255, 255, 255, 0.8); 
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            position: relative;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
            font-size: 24px;
            color: #4CAF50;
        }

        .logo img {
            height: 100px;
        }

        .login-section {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .form-container {
            width: 50%;
            background: #e6f7e6;
            padding: 20px;
            border-radius: 10px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .form-container a {
            text-decoration: none;
            color: #4CAF50;
            font-size: 14px;
            display: block;
            margin-bottom: 15px;
        }

        .form-container button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .help-container {
            width: 40%;
            border: 2px dashed #4CAF50;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .help-container p {
            color: #555;
        }

        .footer {
            margin-top: 20px;
            display: flex;
            justify-content: flex-start;
            gap: 20px;
        }

        .footer i {
            font-size: 20px;
            color: #4CAF50;
        }

        .footer i:hover {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Welcome to Elderwatch</h1>
            <div class="logo">
                <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/elderwatch%20logo.jpeg" alt="Elderwatch Logo">
            </div>
        </div>

        <div class="login-section">
            <div class="form-container">
                <h2>Login</h2>
                <p>Please enter your login information below. Both your username and password are case sensitive.</p>
                <form action="LoginServlet" method="post">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>

                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>

                    <a href="#">Forgot password?</a>
                    <button type="submit">LOGIN</button>
                </form>

                <%-- Display error message if login fails --%>
                <%
                    String errorMessage = (String) request.getAttribute("errMessage");
                    if (errorMessage != null) {
                %>
                <p style="color: red; font-weight: bold;"><%= errorMessage %></p>
                <%
                    }
                %>
                
                
            </div>

            <div class="help-container">
                <p><strong>Need Help?</strong></p>
                <p>Contact Helpdesk at</p>
                <p><strong>03-89999934</strong></p>
                <p>(9 a.m. - 6 p.m. weekdays)</p>
            </div>
        </div>

        <div class="footer">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-instagram"></i>
        </div>
    </div>
</body>
</html>
