<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
}

/* Full Page Background */
body {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
}

/* Navbar */
.navbar {
    background: rgba(0, 0, 0, 0.85);
    padding: 15px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar h2 {
    margin: 0;
}

.nav-links a {
    color: white;
    margin-left: 25px;
    text-decoration: none;
    font-weight: 500;
}

.nav-links a:hover {
    color: #00c6ff;
}

/* Container */
.container {
    width: 95%;
    max-width: 1100px;
    margin: 40px auto;
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    padding: 25px;
    box-shadow: 0 8px 32px rgba(0,0,0,0.2);
}

/* Heading */
h2.dashboard-title {
    text-align: center;
    margin-bottom: 20px;
    letter-spacing: 1px;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    overflow: hidden;
    border-radius: 10px;
}

th {
    background: rgba(0,0,0,0.7);
    padding: 12px;
}

td {
    padding: 10px;
    text-align: center;
}

tr:nth-child(even) {
    background: rgba(255,255,255,0.1);
}

tr:nth-child(odd) {
    background: rgba(0,0,0,0.2);
}

tr:hover {
    background: rgba(255,255,255,0.3);
    transition: 0.3s;
}
</style>

</head>
<body>

<!-- NAVBAR OUTSIDE CONTAINER -->

<div class="navbar">
    <h2>CourseEnroll</h2>


<div class="nav-links">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/enroll">Enrollment Form</a>
    <a href="${pageContext.request.contextPath}/courses">Courses</a>
</div>


</div>

<!-- MAIN CONTENT -->

<div class="container">


<h2 class="dashboard-title">🎓 Student Dashboard</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Timings</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Mobile</th>
        <th>Course Fees</th>
    </tr>

    <tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.email}</td>
        <td>${student.course}</td>
        <td>${student.timing}</td>
        <td>${student.gender}</td>
        <td>${student.address}</td>
        <td>${student.mobilNo}</td>
        <td>₹ ${student.courseprice}</td>
    </tr>
</table>


</div>

</body>
</html>
