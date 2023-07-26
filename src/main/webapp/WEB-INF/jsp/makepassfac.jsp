<%-- 
    Document   : welcomepage
    Created on : Jul 12, 2023, 11:08:13 AM
    Author     : mrina
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%String valueString = request.getParameter("value");
    Integer v = Integer.parseInt(valueString);%>        
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
<!--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">-->
        <title>MIT Entry Pass</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500&display=swap');
            *{
                font-family: 'Work Sans', sans-serif;
            }
            body{
                position: fixed;
                width: 100vw;
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
        </style>
    </head>
<!--    <span class="material-symbols-outlined" style="font-size: 2rem;">assignment_ind</span>-->
    <body>
    <div class="overlay">
        <%--@ include file="header.jsp"--%>
        <div class="container1">
            <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" class="logo" alt="MITAOE Logo" />
            <a href="#" class="routing-btn"><span class="material-symbols-outlined">call</span></a>
            
            <div align="center" class="row">

                    <div align="center" class="card" style="margin-top: 80px; align-items: center; position: fixed; display: flex;border-radius: 10px;">

                        <div align="center" class="card-title" style="margin-bottom: 50px;border-top-left-radius: 10px; border-top-right-radius: 10px; width: 450px; flex-direction: column; display: flex; align-items: center; position: fixed;">
                            <h3 style="margin: 20px auto;">Visitor's Pass</h3>
                            <ul class="nav nav-tabs card-header-tabs" style="display: flex; justify-content: center;">
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="welcomepage" style="text-decoration: none; color: #fff;">Meet a Faculty</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="visitpage">Visiting the Campus</a>
                                </li>
                            </ul>
                        </div>

                        <div class="card-body" style="margin-top: 100px; width: 450px;">
                            <br><%String name="",purpose="",acc="Accept"; Long phone=123456789L;%>
                            <%try{
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
                                
                                PreparedStatement stmt = con.prepareStatement("select * from entry_pass where entry_id=?");
                                stmt.setInt(1,v);
                                
                                ResultSet rs=stmt.executeQuery();
                                while(rs.next()){
                                    name=rs.getString("name");
                                    purpose=rs.getString("purpose");
                                    phone=rs.getLong("phone");
                                }
                                
                            }catch(Exception k){
                                k.getMessage();
                            }
                            %>
                            <form action="makepassfaculty" method="post" class="forgot-pass-form" id="form" enctype="multipart/form-data">
                                <input type="text" name="a" class="form-input" value="<%=name%>" id="name" required><br>
                                <input type="text" name="b" class="form-input" value="<%=v%>" id="name" required hidden>
                                <input type="text" name="f" class="form-input" value="<%=acc%>" id="name" required hidden>
                                Entry Time<br>
                                <input type="time" name="c" class="form-input" placeholder="entry time" id="entry" required><br>
                                Upload photo<br>
                                <input id="images" type="file" style="margin-left: 40px; padding: 10px;" accept="image/png, image/jpeg" name="d"/><br>
                                <input type="date" name="e" id="dateField" class="form-input" required hidden>
                                <br><input type="submit" value="   Make Pass   " class="btn-primary btn"><br><br><br>
                            </form>
                        </div>
                    </div>

                </div>
            
<!--            <div class="row" style="margin-top: 30px;">
                <div class="col-sm-6">
                    <div class="card" id="card1" style="width: 600px; border-radius: 10px; margin-right: 10px;">
                        <div style="position: relative;">
                            <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" alt="MITEntryPass Logo" style="width: 100%; border-top-left-radius: 10px; border-top-right-radius: 10px;" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card" style="margin-top: 40px; margin-left: 20px; width: 550px; border-radius: 10px;">
                        
                        <div align="center" class="card-title" style="background-color: grey; border-top-left-radius: 10px; border-top-right-radius: 10px; padding-bottom: 8px;">
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
                        
                        
                        <div align="center" class="card-title" style="background-color: grey; border-radius: 10px; display: flex; flex-direction: column; align-items: center;">
                            <h3 style="margin-left: auto; margin-top: 10px; margin-right: auto;">Visitor's Pass  </h3>
                            <ul style="align-items: center;" class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" href="welcomepage">Meet a Faculty</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="visitpage" style="text-decoration: none; color: #fff;">Visiting the Campus</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="#">Disabled</a>
                                </li>
                            </ul>
                            <hr style="width: 80%; margin-left: auto; margin-right: auto;">
                        </div>
                        <div class="card-body">
                            <br>
                            <form action="request" method="post" class="forgot-pass-form" id="form">
                                <input type="text" name="a" class="form-input" placeholder="Name" id="name" required><br>
                                <input type="text" name="b" class="form-input" placeholder="Purpose" id="purpose" required><br>
                                <input type="text" name="c" class="form-input" placeholder="Phone number" id="phone" required><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Entry Time<br>
                                <input type="time" name="d" class="form-input" placeholder="entry time" id="entry" required><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Duration<br>
                                <input type="text" name="e" class="form-input" placeholder="duration" id="duration" required hidden>
                                 The custom time picker container 
                                <div id="timePicker" class="time-picker">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <input type="number" id="hour" min="0" max="23" step="1" placeholder="HH" required>
                                  <span>:</span>
                                  <input type="number" id="minute" min="0" max="59" step="1" placeholder="MM" required>
                                </div>
                                
                                <input type="time" name="d" class="form-input" placeholder="entry time" id="entry" required step="3600" pattern="(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9] --"><br>
                                <br><input type="submit" value="   Send Request   " class="btn-primary btn"><br><br><br>
                            </form>
                        </div>
                    </div>
                </div>
          </div>-->
            
        </div>
    </div>
    <script>
        window.addEventListener('DOMContentLoaded', (event) => {
            const inputElement = document.getElementById('entry');
            const placeholderValue = inputElement.getAttribute('placeholder');
            inputElement.value = placeholderValue;
        });
        
        window.addEventListener('DOMContentLoaded', (event) => {
    const inputElement = document.getElementById('duration');
    const placeholderValue = inputElement.getAttribute('placeholder');

    inputElement.addEventListener('click', () => {
      if (inputElement.value === placeholderValue) {
        inputElement.value = '';
      }
    });

    inputElement.addEventListener('blur', () => {
      if (inputElement.value === '') {
        inputElement.value = placeholderValue;
      }
    });
  });
        
//        window.addEventListener('DOMContentLoaded', (event) => {
//            const inputElement = document.getElementById('duration');
//            const placeholderValue = inputElement.getAttribute('placeholder');
//            inputElement.value = placeholderValue;
//        });
    </script>
    
    <script>
  // Get the original time input and custom time picker container
  const timeInput = document.getElementById('duration');
  const timePicker = document.getElementById('timePicker');

  // Add event listener to the original time input
  timeInput.addEventListener('focus', function () {
    // Hide the original time input and show the custom time picker container
    timeInput.style.display = 'none';
    timePicker.style.display = 'flex';

    // If the input value is in a valid 24-hour time format, set the values in the custom time picker
    const timeValue = timeInput.value;
    const timeParts = timeValue.split(':');
    if (timeParts.length === 2) {
      document.getElementById('hour').value = parseInt(timeParts[0]);
      document.getElementById('minute').value = parseInt(timeParts[1]);
    }
  });

  // Update the original time input when the custom time picker values change
  timePicker.addEventListener('change', function () {
    const hour = document.getElementById('hour').value.padStart(2, '0');
    const minute = document.getElementById('minute').value.padStart(2, '0');
    timeInput.value = `${hour}:${minute}`;
  });

  // On blur (when the custom time picker loses focus), hide it and show the original time input
  timePicker.addEventListener('blur', function () {
    timeInput.style.display = 'block';
    timePicker.style.display = 'none';
  });
</script>

        <script>
            var currentDate = new Date();

    // Format the date as "YYYY-MM-DD"
            var formattedDate = currentDate.toISOString().slice(0, 10);

            // Set the formatted date as the value of the input field
            document.getElementById("dateField").value = formattedDate;
        </script>
    </body>
</html>
