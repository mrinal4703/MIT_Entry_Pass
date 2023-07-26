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

<%
  String today_date = request.getParameter("value");
  String required_date = request.getParameter("valuee");
%>
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
                position: relative;
                width: 100%;
                height: 100vh;
                background-repeat:repeat;
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
            
            .routing-btn{
                position: fixed;
                text-decoration: none;
                color: #fff;
                font-size: 1.4rem;
                border-radius: 120px;
                z-index: 4;
                background-color: blue;
                right: 20px;
                bottom: 20px;
                padding: 10px 10px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
            }
            .logo{
                position: fixed;
                z-index: 4;
                top: 20px;
                left: 20px;
                width: 300px;
                height: 74.86px;
            }
            
            .register-btn{
                position: fixed;
                text-decoration: none;
                color: #fff;
                font-size: 1.2rem;
                border-radius: 50px;
                z-index: 4;
                background-color: blue;
                right: 20px;
                top: 20px;
                padding: 6px 20px;
                justify-content: center; /* Center content horizontally */
                align-items: center; /* Center content vertically */
                display: flex; /* Use flexbox to align content */
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;

                /* New property to display the content in a column layout */
                flex-direction: column;
            }
            
            input[type="date"]{
                background-color: transparent;
                border: none;
                color: #fff;
            }            
        </style>
    </head>
<!--    <span class="material-symbols-outlined" style="font-size: 2rem;">assignment_ind</span>-->
    <body>
    <div class="overlay">
        <div class="container1">
            <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" class="logo" alt="MITAOE Logo" />
            <a href="register" class="routing-btn">Return back</a>
            <form action="searchentry" method="post">
                <button type="submit" class="register-btn">
                    <span class="material-symbols-outlined" style="font-size: 4rem;">calendar_month</span>
                    <input type="date" name="a">
                </button>
            </form>
            <%if(required_date!=null){%><h1 style="margin-top: 80px;"><%=required_date%></h1><%}
            else{%><h1 style="position: fixed; top: 80px;"><%=today_date%></h1><%}%>
            <table class="table" style="background-color: #fff; width: 90%; text-align: center; margin-top: 0px;z-index: 3;">
                <thead class="thead" style="background-color: black; color: #fff;">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Work with</th>
                        <th scope="col">Entry Time</th>
                        <th scope="col">Exit Time</th>
                        <th scope="col">Duration</th>
                        <th scope="col">Reason</th>
                        <th scope="col">Status</th>
                        <th scope="col">Phone number</th>
                        <th scope="col">Issuer name</th>
                        <th scope="col">Visit date</th>
                        <th scope="col">Address</th>
                    </tr>
                </thead>
                <tbody>
              <%try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
                    
                    int cnt=0;
                    
                    PreparedStatement stmt2 = con.prepareStatement("select count(*) from entry_pass where visit_date=?");
                    if(required_date!=null){stmt2.setString(1, required_date);}
                    else{stmt2.setString(1, today_date);}
                    ResultSet rst1 = stmt2.executeQuery();
                    while(rst1.next()){cnt=rst1.getInt(1);}
                    %><h3 style="position: fixed; left: 80px; top: 120px;"><%=cnt%> entries</h3><%
                    
                    PreparedStatement stmt = con.prepareStatement("select * from entry_pass where visit_date=?");
                    if(required_date!=null){stmt.setString(1, required_date);}
                    else{stmt.setString(1, today_date);}
                    
                    ResultSet rs = stmt.executeQuery();
                    
                    while(rs.next()){
                        String nm="";
                        PreparedStatement stmt1 = con.prepareStatement("select issuer from issuers where issuer_id=?");
                        stmt1.setInt(1, rs.getInt("issuer_id"));
                        ResultSet rst = stmt1.executeQuery();
                        while(rst.next()){nm=rst.getString(1);}
                    %>
                    
                        <tr>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("work_with")%></td>
                            <td><%=rs.getString("entry")%></td>
                            <td><%=rs.getString("exitt")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><%=rs.getString("reason")%></td>
                            <td><%=rs.getString("status")%></td>
                            <td><a href="tel:0<%=rs.getString("phone")%>"><%=rs.getString("phone")%></a></td>
                            <td><%=nm%></td>
                            <td><%=rs.getString("visit_date")%></td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
                    
                  <%}
                }
              catch(Exception k){
                k.getMessage();
                }%>
                </tbody>
            </table>
        </div>

    </div>
    

    </body>

</html>
