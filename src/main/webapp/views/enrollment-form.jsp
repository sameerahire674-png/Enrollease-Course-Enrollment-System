<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Course Enrollment</title>

<style>

    * {
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', sans-serif;
        margin: 0;

        background:
            linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
            url("https://images.unsplash.com/photo-1509062522246-3755977927d7");

        background-size: cover;
        background-position: center;
        background-attachment: fixed;

        color: #fff;
    }

    .navbar {
        background: rgba(0, 0, 0, 0.7);
        padding: 15px 30px;

        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h2 {
        margin: 0;
    }

    .nav-links a {
        color: white;
        margin-left: 20px;
        text-decoration: none;
    }

    .nav-links a:hover {
        color: #00c6ff;
    }

    .form-wrapper {
        max-width: 600px;
        margin: 50px auto;
        padding: 0 20px;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
    }

    input[type="text"],
    input[type="email"],
    select {
        width: 100%;
        padding: 10px;

        border: none;
        border-bottom: 2px solid #ddd;

        background: transparent;
        color: #fff;
    }

    select option {
        color: black;
    }

    input:focus,
    select:focus {
        outline: none;
        border-bottom: 2px solid #00c6ff;
    }

    .inline-group {
        display: flex;
        gap: 15px;
    }

    .inline-group label {
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .btn {
        width: 100%;
        padding: 12px;

        background: #00c6ff;
        border: none;

        color: white;
        cursor: pointer;

        border-radius: 5px;
        margin-top: 10px;

        font-size: 16px;
        font-weight: bold;
    }

    .btn:hover {
        background: #0072ff;
    }

    /* Validation Error Message */
    .error {
        color: #ff4d4d;
        font-size: 14px;
        display: block;
        margin-top: 5px;
        font-weight: 500;
    }

    /* Success Message */
    .message {
        text-align: center;
        margin-top: 15px;
        color: #00ffae;
        font-weight: bold;
    }

</style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<div class="navbar">

    <h2>CourseEnroll</h2>

    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/enroll">
            Enroll
        </a>

        <a href="${pageContext.request.contextPath}/courses">
            Courses
        </a>

    </div>

</div>


<!-- ================= FORM ================= -->

<div class="form-wrapper">

    <h2>Course Enrollment</h2>


    <form:form
        action="${pageContext.request.contextPath}/save"
        modelAttribute="student"
        method="post">


        <!-- NAME -->

        <div class="form-group">

            <label>Name</label>

            <form:input path="name"/>

            <form:errors
                path="name"
                cssClass="error"/>

        </div>


        <!-- EMAIL -->

        <div class="form-group">

            <label>Email</label>

            <form:input path="email"/>

            <form:errors
                path="email"
                cssClass="error"/>

        </div>


        <!-- MOBILE -->

        <div class="form-group">

            <label>Mobile</label>

            <form:input path="mobilNo"/>

            <form:errors
                path="mobilNo"
                cssClass="error"/>

        </div>


        <!-- GENDER -->

        <div class="form-group">

            <label>Gender</label>

            <div class="inline-group">

                <label>

                    <form:radiobutton
                        path="gender"
                        value="Male"/>

                    Male

                </label>


                <label>

                    <form:radiobutton
                        path="gender"
                        value="Female"/>

                    Female

                </label>

            </div>

            <form:errors
                path="gender"
                cssClass="error"/>

        </div>


        <!-- ADDRESS / CITY -->

        <div class="form-group" required<%= "city is required" %>>

            <label>City</label>

            <form:select path="address">

                <form:option
                    value=""
                    label="-- Select City --"/>

                <form:option
                    value="Pune"
                    label="Pune"/>

                <form:option
                    value="Mumbai"
                    label="Mumbai"/>

                <form:option
                    value="Nashik"
                    label="Nashik"/>

                <form:option
                    value="Nagpur"
                    label="Nagpur"/>

                <form:option
                    value="Bangalore"
                    label="Bangalore"/>

                <form:option
                    value="Hyderabad"
                    label="Hyderabad"/>

                <form:option
                    value="Chennai"
                    label="Chennai"/>

                <form:option
                    value="Delhi"
                    label="Delhi"/>

            </form:select>

            <form:errors
                path="address"
                cssClass="error"/>

        </div>


        <!-- COURSE -->

        <div class="form-group">

            <label>Course</label>

            <form:select path="course">

                <form:option
                    value=""
                    label="-- Select Course --"/>

                <form:option
                    value="Java Full Stack"
                    label="Java Full Stack Development"/>

                <form:option
                    value="Spring Boot"
                    label="Spring Boot & Microservices"/>

                <form:option
                    value="Python"
                    label="Python Development"/>

                <form:option
                    value="Data Structures"
                    label="Data Structures & Algorithms"/>

                <form:option
                    value="Web Development"
                    label="Full Stack Web Development"/>

                <form:option
                    value="Cloud AWS"
                    label="Cloud Computing (AWS)"/>

                <form:option
                    value="AI ML"
                    label="Artificial Intelligence & Machine Learning"/>

            </form:select>

            <form:errors
                path="course"
                cssClass="error"/>

        </div>


        <!-- TIMING -->

        <div class="form-group">

            <label>Timing</label>

            <div class="inline-group">

                <label>

                    <form:checkbox
                        path="timing"
                        value="Morning"/>

                    Morning

                </label>


                <label>

                    <form:checkbox
                        path="timing"
                        value="Afternoon"/>

                    Afternoon

                </label>


                <label>

                    <form:checkbox
                        path="timing"
                        value="Evening"/>

                    Evening

                </label>

            </div>

            <form:errors
                path="timing"
                cssClass="error"/>

        </div>


        <!-- SUBMIT -->

        <button
            type="submit"
            class="btn">

            Enroll Now

        </button>


        <!-- SUCCESS MESSAGE -->

        <div class="message">

            ${msg}

        </div>


    </form:form>

</div>

</body>

</html>