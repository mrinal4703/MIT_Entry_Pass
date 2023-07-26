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
                width: 100vw;
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
                position: relative;
                min-height: 100vh;
                display: flex;
                flex-direction: column;
                align-items: center; /* Vertically center the content */
                justify-content: center; /* Horizontally center the content */
                z-index: 2;
                color: #fff;
            }
            
            .image-container, .text-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            
            .container1 img {
                max-width: 100%;
                max-height: 100%;
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

        </style>
    </head>
<!--    <span class="material-symbols-outlined" style="font-size: 2rem;">assignment_ind</span>-->
    <body>
    <div class="overlay">
        <div class="container1">
            <div class="image-container">
                <img src="${pageContext.request.contextPath}/resources/img/loader-unscreen.gif" alt="Loading" style="width: 640px; height: 480px;" />
            </div>
            <div class="text-container">
                <h3>Request Sent, waiting for approval</h3><br>
                <a href="makepassfac?value=<%=request.getParameter("value")%>" class="approve-btn"><span class="material-symbols-outlined"></span>Approve the visit</a>                    
            </div>
        </div>

        
    </div>
    </body>
</html>
