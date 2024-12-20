

<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.*, java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .content-wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .sidebar {
            width: 270px;
            height: 100vh;
            background-color: #333333; 
            padding: 20px;
            position: fixed;
            color: white;
        }

        .sidebar img {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            margin-top: 80px;
        }

        .sidebar h2 {
            margin-top: 30px;
        }

        .main-content {
            margin-left: 300px;
            padding: 50px;
            flex: 1;
        }

        .main-header {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-end;
            padding: 10px 20px;
            border-bottom: 1px solid #ddd;
            background-color: #4CAF50;
            color: white;
            z-index: 1;
        }

        .header-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .main-header .breadcrumb {
            font-size: 14px;
            color: white;
        }

        .main-header .search-box {
            display: flex;
            align-items: center;
            max-width: 300px;
            flex: 1;
        }

        .main-header .search-box input {
            padding: 5px;
            margin-right: 5px;
            border: none;
            border-radius: 4px;
            width: 100%;
        }

        .main-header .search-box button {
            background-color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        .logout-btn {
            background-color: white;
            color: #4CAF50;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .grid-item {
            background-color: #fff;
            padding: 20px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .grid-item img {
            border-radius: 50%;
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }

        .grid-item h3 {
            color: #4CAF50;
        }

        footer {
            text-align: center;
            padding: 5px;
            background-color: #333333;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <%
        // Check if the user is logged in by verifying the session
        if (session == null || session.getAttribute("username") == null) {
            // No session, redirect to login
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    <div class="content-wrapper">
        <div class="sidebar">
            <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/profile.png" alt="User Avatar">
            <h2>Welcome<br><%= session.getAttribute("username") != null ? session.getAttribute("username") : "Anonymous" %></h2>
            <h3>Dashboard      ></h3> 
        </div>
            <div class="main-header">
                <a href="LogoutServlet" class="logout-btn">Logout</a>
                <div class="header-row">
                    <div class="search-box">
                        <input type="text" placeholder="Search...">
                        <button>🔍</button>
                    </div>
                    <div class="breadcrumb">
                        Home > Dashboard
                    </div>
                </div>
            </div>
            <div class="main-content">
            <div class="grid-container">
                <a href="senior.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/nursing-home.png" alt="Seniors">
                    <h3>Senior</h3>
                    <p>Manage senior profiles and their relationships with family contacts, medical records, and activities</p>
                </a>
                <a href="medical_records.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/medical-record.png" alt="Medical Records">
                    <h3>Medical Records</h3>
                    <p>Medical history of seniors, including their diagnoses, treatments, and records</p>
                </a>
                <a href="appointments.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/schedule_8302424.png" alt="Appointments">
                    <h3>Appointments</h3>
                    <p>Book an appointment for various services</p>
                </a>
                <a href="activities.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/participation.png" alt="Activities">
                    <h3>Activities</h3>
                    <p>Track and manage activities for seniors</p>
                </a>
                <a href="family_contact.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/family.png" alt="Family Contact">
                    <h3>Family Contact</h3>
                    <p>Family contact information for seniors, including their relationships and emergency contact details</p>
                </a>
                <a href="staff.html" class="grid-item">
                    <img src="https://raw.githubusercontent.com/xxinrndln/Elderwatch-Senior-Care-Management-System/refs/heads/main/Images/id-card.png" alt="Staff">
                    <h3>Staff</h3>
                    <p>Information for nurses and support staff, including their roles and contact details</p>
                </a>
            </div>
        </div>

        <footer>
            <p>&copy; 2024 Elderwatch. All Rights Reserved.</p>
        </footer>
    </div>
</body>
</html>

