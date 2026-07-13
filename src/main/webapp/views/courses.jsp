<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Courses</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background-color: #f4f6f9;
    }

    .navbar {
        background-color: #2c3e50;
        padding: 15px 40px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h2 { color: white; margin: 0; }

    .nav-links a {
        color: white;
        text-decoration: none;
        margin-left: 25px;
    }

    .header {
        text-align: center;
        padding: 50px;
        background: linear-gradient(to right, #74ebd5, #9face6);
    }

    .courses {
        padding: 50px;
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 30px;
    }

    .card {
        width: 300px;
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-10px);
    }

    .card img {
        width: 100%;
        height: 180px;
        object-fit: cover;
    }

    .card-body { padding: 20px; }

    .price {
        font-weight: bold;
        color: #27ae60;
        margin: 10px 0;
    }

    .btn {
        display: block;
        text-align: center;
        padding: 10px;
        background: #2c3e50;
        color: white;
        border-radius: 6px;
        text-decoration: none;
    }

    .btn:hover { background: #f39c12; }

    .footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 15px;
    }
</style>

</head>
<body>

<div class="navbar">
    <h2>CourseEnroll</h2>
    <div class="nav-links">
        <a href="/">Home</a>
        <a href="${pageContext.request.contextPath}/enroll">Enroll</a>
    </div>
</div>

<div class="header">
    <h1>Explore Our Courses</h1>
</div>

<div class="courses">

    <!-- Java -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4">
        <div class="card-body">
            <h3>Java Development</h3>
            <p>Core Java, OOP, JDBC & backend development.</p>
            <div class="price">₹4999</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <!-- Python -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1526378722484-bd91ca387e72">
        <div class="card-body">
            <h3>Python Programming</h3>
            <p>Python for AI, automation & data science.</p>
            <div class="price">₹3999</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <!-- Web -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085">
        <div class="card-body">
            <h3>Web Development</h3>
            <p>HTML, CSS, JavaScript & responsive design.</p>
            <div class="price">₹2999</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <!-- Spring -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c">
        <div class="card-body">
            <h3>Spring Boot</h3>
            <p>Build REST APIs and microservices.</p>
            <div class="price">₹5999</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <!-- DSA -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1519389950473-47ba0277781c">
        <div class="card-body">
            <h3>Data Structures</h3>
            <p>Master coding interviews and algorithms.</p>
            <div class="price">₹3499</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <!-- NEW COURSES -->

    <div class="card">
        <img src="https://images.unsplash.com/photo-1508780709619-79562169bc64">
        <div class="card-body">
            <h3>React JS</h3>
            <p>Build modern frontend apps using React.</p>
            <div class="price">₹4499</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1518770660439-4636190af475">
        <div class="card-body">
            <h3>Node.js</h3>
            <p>Backend development using Node & Express.</p>
            <div class="price">₹4299</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1555949963-aa79dcee981c">
        <div class="card-body">
            <h3>Machine Learning</h3>
            <p>Learn ML algorithms and real-world projects.</p>
            <div class="price">₹6999</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1581090700227-1e8c1e6c7b02">
        <div class="card-body">
            <h3>Cloud Computing</h3>
            <p>AWS basics, EC2, S3 & deployment.</p>
            <div class="price">₹5499</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1504639725590-34d0984388bd">
        <div class="card-body">
            <h3>Cyber Security</h3>
            <p>Learn ethical hacking & security basics.</p>
            <div class="price">₹6499</div>
            <a href="${pageContext.request.contextPath}/enroll" class="btn">Enroll</a>
        </div>
    </div>

</div>

<div class="footer">
    <p>© 2026 CourseEnroll. All Rights Reserved.</p>
</div>

</body>
</html>