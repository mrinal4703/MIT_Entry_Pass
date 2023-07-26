<%-- 
    Document   : welcomepage
    Created on : Jul 12, 2023, 11:08:13 AM
    Author     : mrina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/img/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/resources/img/site.webmanifest">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">-->
        <title>MIT Entry Pass</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500&display=swap');
            *{
                font-family: 'Work Sans', sans-serif;
            }
            body{
                position: fixed;
                width: 100%;
                height: 100vh;
                background-repeat: no-repeat;
                background-size: cover;
/*                background-color: #3482d0;*/
/*                background-color: #ffff;*/
                background-image: url("${pageContext.request.contextPath}/resources/img/campus7.jpg") !important;
                z-index: 0;
            }
            .overlay{
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 1;
            }
            .container1 {
                width: 100%;
                position: relative;
                min-height: 100vh;
                overflow: hidden;
                vertical-align: middle;
                justify-content: space-between;
                z-index: 2;
            }
            .routing-btn{
                position: fixed;
                text-decoration: none;
                color: #fff;
                font-size: 1.4rem;
                border-radius: 120px;
                z-index: 3;
                background-color: blue;
                right: 20px;
                bottom: 20px;
                padding: 19px 19px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
            }
            
            .register-btn{
                position: fixed;
                text-decoration: none;
                color: #fff;
                font-size: 1.4rem;
                border-radius: 40px;
                z-index: 3;
                background-color: blue;
                right: 20px;
/*                top: 150px;*/
                bottom: 100px;
                padding: 19px 19px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;

                /* New property to display the content in a column layout */
                flex-direction: column;
            }
            
            #reg {
                font-size: 1.8rem; /* Adjust the font size as needed */
                display: block; /* Display the span as a block-level element */
            }
            
            .logo{
                position: fixed;
                z-index: 3;
                top: 20px;
                left: 20px;
                width: 300px;
                height: 74.86px;
            }
            
            .row {
                display: flex;
                justify-content: center;
            }

            .card {
                width: 450px;
                border-radius: 10px;
            }

            .card-title {
                background-color: grey;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                padding-bottom: 8px;
            }
            
            #card1{
                background-image: url("${pageContext.request.contextPath}/resources/img/campus3.jpg") !important;
                height: 530px;
            }
            
            .form-input {
                width: 70%!important;
                border: none;
                border-bottom: 1px solid #949494;
                border-radius: 0;
                display: block;
                margin: 0 auto;
                outline: none;
                transition: 0.2s all;
            }

            .form-input:focus {
                border-bottom: 2px solid #1e53ff;
                transition: 0.2s all;
            }
            
            .time-picker {
                display: flex;
                align-items: center;
            }

            .time-picker input {
                width: 50px;
                text-align: center;
            }
            
            .login-btn{
                position: fixed;
                text-decoration: none;
                color: #fff;
                font-size: 1.2rem;
                border-radius: 50px;
                z-index: 3;
                background-color: blue;
                right: 20px;
                top: 20px;
                padding: 6px 20px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
                flex-direction: column;
            }
            
        </style>
    </head>
    <body>
    <div class="overlay">
        <div class="container1">
            
            <% boolean flag = false;
                Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
                if (loggedIn == null || !loggedIn) { %>
               <a class="login-btn" href="login">Login</a>
             <% } else { %>
               <a class="login-btn" href="logout">Logout</a>
             <% } %>
            <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" class="logo" alt="MITAOE Logo" />
            <a href="call" class="routing-btn"><span class="material-symbols-outlined">call</span></a>
            <a href="register" class="register-btn"><span id="reg" class="material-symbols-outlined">auto_stories</span></a>
            
            <div align="center" class="row">

                    <div align="center" class="card" style="margin-top: 50px; align-items: center; position: fixed; display: flex;border-radius: 10px;">

                        <div align="center" class="card-title" style="margin-bottom: 50px;border-top-left-radius: 10px; border-top-right-radius: 10px; width: 450px; flex-direction: column; display: flex; align-items: center; position: fixed;">
                            <h3 style="margin: 20px auto;">Visitor's Pass</h3>
                            <ul class="nav nav-tabs card-header-tabs" style="display: flex; justify-content: center;">
                                <li class="nav-item">
                                    <a class="nav-link" href="welcomepage" style="text-decoration: none; color: #fff;">Meet a Faculty</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="visitpage">Visiting the Campus</a>
                                </li>
                            </ul>
                        </div>

                        <div class="card-body" style="margin-top: 100px; width: 450px;">
                            <br>
                            <form action="makepassvisitor" method="post" class="forgot-pass-form" id="form" enctype="multipart/form-data">
                                <input type="text" name="a" class="form-input" placeholder="Name" id="name" required><br>
                                <input type="text" name="b" class="form-input" placeholder="Purpose" id="purpose" required><br>
                                <input type="text" name="c" class="form-input" placeholder="Phone number" id="phone" required><br>
                                <input type="text" name="i" class="form-input" placeholder="Address" id="address" required><br>
                                Entry Time<br>
                                <input type="time" name="d" class="form-input" placeholder="entry time" id="entry" required><br>
                                <input type="text" name="h" class="form-input" placeholder="Issuer" value="<%=(String) session.getAttribute("userName")%>" id="id" required hidden>
                                <input type="date" name="g" id="dateField" class="form-input" required hidden>
                                Upload photo<br>
                                <input id="images" type="file" style="margin-left: 40px; padding: 10px;" accept="image/png, image/jpeg" name="f"/><br>
<!--                                <input type="time" name="d" class="form-input" placeholder="entry time" id="entry" required step="3600" pattern="(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9] --"><br>-->
                                <% boolean flag1 = false;
                                    loggedIn = (Boolean) session.getAttribute("loggedIn");
                                    if (loggedIn == null || !loggedIn) { %>
                                    <br><a class="btn-primary btn" href="#" onclick="alert('Please Login')">   Make Pass   </a>
                                 <% } else { %>
                                   <br><input type="submit" value="   Make Pass   " class="btn-primary btn"><br>
                                 <% } %>
                            </form>
                        </div>
                    </div>
                </div>            
        </div>
    </div>

<script>
    const inputField = document.getElementById("phone");
    inputField.addEventListener("input", function (event) {
        let value = event.target.value;
        value = value.replace(/[^0-9]/g, "");
        const maxLength = 10;
        if (value.length > maxLength) {
            value = value.slice(0, maxLength);
        }
        event.target.value = value;
    });
    
    var currentDate = new Date();
    var formattedDate = currentDate.toISOString().slice(0, 10);
    document.getElementById("dateField").value = formattedDate;
</script>
    
    </body>
</html>
