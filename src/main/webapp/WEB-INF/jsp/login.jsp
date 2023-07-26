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
<%--Integer v = model.getAttribute(val);--%>
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
                width: 100%;
                height: 100vh;
                background-repeat: no-repeat;
                background-size: cover;
                background-image: url("${pageContext.request.contextPath}/resources/img/campus7.jpg") !important;
                z-index: 0;
            }
            .overlay{
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 1;
            }
            .container1 {
                width: 100%;
/*                display: flex;  Use flexbox */
                justify-content: center; /* Center horizontally */
                align-items: center; /* Center vertically */
                min-height: 100vh;
                overflow: hidden;
                position: relative;
                z-index: 2;
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
            
            .logo{
                position: fixed;
                z-index: 3;
                top: 20px;
                left: 20px;
                width: 300px;
                height: 74.86px;
            }
            
            .approve-btn{
                text-decoration: none;
                color: #fff;
                font-size: 1rem;
                z-index: 3;
                border-radius: 30px;
                background-color: blue;
                padding: 5px 10px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
/*                display: flex;  Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
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
                padding: 10px 10px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
            }

        </style>
    </head>
<!--    <span class="material-symbols-outlined" style="font-size: 2rem;">assignment_ind</span>-->
    <body>
    <div class="overlay">
        <div class="container1">
            <a href="welcomepage" class="routing-btn">Return back</a>
            <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" class="logo" alt="MITAOE Logo" />
            <div align="center" class="row">

                    <div align="center" class="card" style="margin-top: 70px; align-items: center; position: fixed; display: flex;border-radius: 10px;">

                        <div align="center" class="card-title" style="margin-bottom: 50px;border-top-left-radius: 10px; border-top-right-radius: 10px; width: 450px; flex-direction: column; display: flex; align-items: center; position: fixed;">
                            <h3 style="margin: 20px auto;">Login</h3>
                        </div>

                        <div class="card-body" style="margin-top: 60px; width: 450px;">
                            <br>
                            <form action="loginform" method="post" id="form">
                                <%
                                    try{
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");

                                    PreparedStatement stmt2 = con.prepareStatement("select * from issuers");
                                    ResultSet rs=stmt2.executeQuery();%>
                                <input list="myOptions" id="issuer" class="form-control form-input" placeholder="Issuer ID" name="a"/><br>
                                <datalist id="myOptions" class="my-datalist">
                                    <%while(rs.next()){
                                    %><option value="<%=rs.getString("issuer_id")%>"><%=rs.getString("issuer_id")%> <%=rs.getString("issuer")%></option><%
                                    }%>
                                </datalist>
<!--                                <input type="submit" value="   Send Request   " class="btn-primary btn"><br><br><br>-->
                                    <%}
                                    catch(Exception k){
                                    k.getMessage();
                                    }
                                %>
                                <input type="password" name="b" class="form-input" placeholder="Password" id="password" required><br>
                                <input type="submit" value="   Login   " class="btn-primary btn"><br><br>
                            </form>
                        </div>
                    </div>

                </div>
        </div>
    </div>
    </body>
</html>
