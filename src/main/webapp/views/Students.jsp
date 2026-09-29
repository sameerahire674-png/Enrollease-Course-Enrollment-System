<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Navbar */
.navbar {
    background: #2c3e50;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: white;
}

.navbar h2 {
    margin: 0;
}

.nav-links a {
    color: white;
    text-decoration: none;
    margin-left: 20px;
    font-size: 15px;
}

.nav-links a:hover {
    color: #00c6ff;
}
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
<!-- Navbar -->
<div class="navbar">
    <h2>CourseEnroll</h2>

    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/enroll">Enrollment</a>
        <a href="${pageContext.request.contextPath}/courses">Courses</a>
        <a href="${pageContext.request.contextPath}/getallstudent">Students</a>
    </div>
</div>
<h2>This is all student whose sucessfully Register  Courses..!</h2>
<table border="2">
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

    <c:forEach var="student" items="${Students}">
    <tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.email}</td>
        <td>${student.course}</td>
        <td>
    <c:forEach var="time" items="${student.timing}">
        ${time}<br>
    </c:forEach>
</td>
        <td>${student.gender}</td>
        <td>${student.address}</td>
        <td>${student.mobilNo}</td>
        <td>₹ ${student.courseprice}</td>
    </tr>
</c:forEach>
    </table>

</body>
</html>