<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Enrollment</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }

    /* Navbar */
    .navbar {
        background-color: #2c3e50;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h2 {
        color: white;
        margin: 0;
    }

    .nav-links a {
        color: white;
        text-decoration: none;
        margin-left: 20px;
        font-size: 16px;
    }

    .nav-links a:hover {
        text-decoration: underline;
    }

    /* Hero Section with ONLINE IMAGE */
    .hero {
        height: 90vh;
        background: url('https://images.unsplash.com/photo-1523240795612-9a054b0db644') no-repeat center center/cover;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        color: white;
    }

    .hero h1 {
        font-size: 42px;
        margin-bottom: 10px;
    }

    .hero p {
        font-size: 20px;
        margin-bottom: 20px;
    }

    .btn {
        padding: 12px 25px;
        background-color: #e67e22;
        color: white;
        border-radius: 5px;
        text-decoration: none;
        font-size: 16px;
    }

    .btn:hover {
        background-color: #d35400;
    }

    /* Course Section */
    .courses {
        padding: 40px;
        text-align: center;
    }

    .course-container {
        display: flex;
        justify-content: center;
        gap: 20px;
        flex-wrap: wrap;
    }

    .course-card {
        width: 250px;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        background: white;
    }

    .course-card img {
        width: 100%;
        height: 150px;
        object-fit: cover;
    }

    .course-card h3 {
        padding: 10px;
    }

    /* Footer */
    .footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 10px;
    }
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h2>CourseEnroll</h2>
    <div class="nav-links">
        <a href="/">Home</a>
        <a href="${pageContext.request.contextPath}/enroll">Enrollment</a>
        <a href="#">About</a>
        <a href="/courses">Courses</a>
        <a href="getallstudent">Get All Enroll Student</a>
    </div>
</div>

<!-- Hero Section -->
<div class="hero">
    <h1>Welcome to Course Enrollment System</h1>
    <p>Learn new skills and grow your career</p>
    <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll Now</a>
</div>

<!-- Courses Section -->
<div class="courses">
    <h2>Popular Courses</h2>

    <div class="course-container">

        <div class="course-card">
            <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4" alt="Java">
            <h3>Java Development</h3>
        </div>

        <div class="course-card">
            <img src="https://images.unsplash.com/photo-1526378722484-bd91ca387e72" alt="Python">
            <h3>Python Programming</h3>
        </div>

        <div class="course-card">
            <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085" alt="Web">
            <h3>Web Development</h3>
        </div>

    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>© 2026 CourseEnroll. All Rights Reserved.</p>
</div>

</body>
</html>