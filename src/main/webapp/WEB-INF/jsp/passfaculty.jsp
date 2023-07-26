<%-- 
    Document   : passfaculty
    Created on : Jul 20, 2023, 2:31:09 PM
    Author     : mrina
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

<%String val = request.getParameter("value");
int id = Integer.parseInt(val);
byte[] imageBytes=null;
String name="",wrk="",rsn="",visit="",entry="",isname="",address="";
Long phn=123456789L; int isid=0,idd=0;%>

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
        <title>MIT Visitor Pass</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500&display=swap');
            *{
                font-family: 'Work Sans', sans-serif;
            }
            body{
                width: 1500px;
                height: 1000px;
/*                align-items: center;
                justify-content: center;*/
            }
            .btn1 {
                width: 100px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 49px;
                border-radius: 49px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
                margin: 10px 0;
                cursor: pointer;
                transition: 0.5s;
                right: 5px;
                bottom: 5px;
                position: fixed;
            }

            .btn1:hover {
                background-color: #4d84e2;
                color:#0000cc;
            }
            .btn2 {
                text-align: center;
                width: 100px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 49px;
                border-radius: 49px;
                text-decoration: none;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
                margin: 10px 0;
                cursor: pointer;
                transition: 0.5s;
                right:107px;
                bottom: 5px;
                position: fixed;
                line-height: 49px;
            }

            .btn2:hover {
                background-color: #4d84e2;
            }
            .container1 {
                width: 95%;
                width: 650px;
                height: 900px;
                background-color: #ffff66;
                position: relative;
/*                min-height: 110vh;*/
                overflow: hidden;
                /*background-color: rgba(0, 0, 0, 0.1);*/
                vertical-align: middle;
                justify-content: space-between;
                margin-top: 20px;
                margin-bottom: 20px;
                margin-right: 20px;
                margin-left: 20px;
                background-color: #fff;
                border: 2px solid black;
            }
            .logo{
                width: 586.3px;
                height: 146.3px;
                margin-top: 20px;
                z-index: 2;
            }
            .card-text-container {
                display: flex;
                justify-content: flex-start;
                align-items: center;
            }

            .card-text {
                font-size: 1.6rem;
                margin: 0;
                width: 325px;
                text-align: left;
            }

        </style>
    </head>
    <body>
        <div class="row">
            <div class="col">
        <div align="center" class="container1">
            <div align="center" class="row">
                <div class="col" align="center">
                    <img src="${pageContext.request.contextPath}/resources/img/mitaoe-logo.jpg" class="logo" alt="MITAOE Logo" />
                    <hr style="width: 586.3px; font-size: 10rem; color: black;">
                    <h4>Alandi, Pune - 412105 Tel.: +91 20 30253500</h4>
                </div>
            </div>
            <br>
            <%try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
                PreparedStatement stmt1 = con.prepareStatement("select * from entry_pass natural join pass_image where entry_id=?");
                stmt1.setInt(1, id);

                ResultSet rs = stmt1.executeQuery();
                while(rs.next()){
                    idd=rs.getInt("entry_id");
                    name=rs.getString("name");
                    wrk=rs.getString("work_with");
                    rsn=rs.getString("reason");
                    visit=rs.getString("visit_date");
                    entry=rs.getString("entry");
                    address=rs.getString("address");
                    isid=rs.getInt("issuer_id");
                    phn=rs.getLong("phone");

                    Blob imageBlob = rs.getBlob("data");
                    InputStream imageStream = imageBlob.getBinaryStream();
                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                    byte[] buffer = new byte[4096];
                    int n = 0;
                    while (-1 != (n = imageStream.read(buffer))) {
                        outputStream.write(buffer, 0, n);
                    }
                    imageBytes = outputStream.toByteArray();

                    PreparedStatement stmt3 = con.prepareStatement("select issuer from issuers where issuer_id=?");
                    stmt3.setInt(1, isid);
                    ResultSet rst3 = stmt3.executeQuery();
                    while(rst3.next()){isname=rst3.getString(1);}
                }
            }catch(Exception k){
                k.getMessage();
            }%>
            <div class="row">
                <div align="center" class="col">
                    <img class="card-img-top" alt="..." align="center" style="width: 250px; height: 250px; border-radius: 5px; border: 3px solid black;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
                </div>
            </div><h1 style="font-size:3rem;">Visitor</h1>
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 650px; border:none;">
                        <div class="card-body">
                            <div class="card-text-container">
                                <p class="card-text"><b>Entry ID</b></p>
                                <p class="card-text"><b>: <%=idd%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Name</b></p>
                                <p class="card-text"><b>: <%=name%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Work With</b></p>
                                <p class="card-text"><b>: <%=wrk%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Phone Number</b></p>
                                <p class="card-text"><b>: <%=phn%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Entry Time</b></p>
                                <p class="card-text"><b>: <%=entry%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Reason of visit</b></p>
                                <p class="card-text"><b>: <%=rsn%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Date of Visit</b></p>
                                <p class="card-text"><b>: <%=visit%></b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Issuer's Name</b></p>
                                <p class="card-text"><b>: <%=isname%></b></p>
                            </div>

<!--                            <div class="card-text-container">
                                <p class="card-text" style="margin: 0; text-align: start; font-size: 1.6rem;"><b>Name</p><p class="card-text" style="margin: 0; text-align: center; font-size: 1.6rem;"><b>: <%--=name--%></p>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
            
        </div>        
            </div>
            <div class="col">
        <div align="center" class="container1">
            <br>
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 650px; border:none;">
                        <div class="card-body">
                            <div class="card-text-container">
                                <p class="card-text"><b>Visitor's Address</b></p>
                                <p class="card-text"><b>: <%=address%></b></p>
                            </div><br><br>
                            <p style="text-align: center;font-size: 1.8rem;margin: 0;"><b>Important Contacts</b></p><br>
                            <div class="card-text-container">
                                <p class="card-text"><b>Mobile</b></p>
                                <p class="card-text"><b>: +91-9071123436, +91-8793323500</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text"><b>Phone</b></p>
                                <p class="card-text"><b>: 020 - 30253500</b></p>
                            </div><br><br>
                            <p style="text-align: center;font-size: 1.8rem;margin: 0;"><b>Instructions for Visitors</b></p><br>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>1. Visitors must carry this pass & present it when asked by Authorites.</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>2. No smoking allowed on college premises.</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>3. Kindly return pass to the main entrance upon departure.</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>4. Report lost pass at the main entrance for assistance.</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>5. Please take photographs only in designated areas. Seek permission for photos elsewhere.</b></p>
                            </div>
                            <div class="card-text-container">
                                <p class="card-text" style="width: 650px;"><b>6. Adhere to visiting hours from 10:00 AM to 4:00 PM. Thank you for your cooperation.</b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>        
            </div>
        </div>
        
        <a href="welcomepage" id="homeButton" class="btn2">Home</a>
        <button class="btn1" id="pdfButton"><b>Save PDF</button>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
              const pdfButton = document.getElementById('pdfButton');
              const homeButton = document.getElementById('homeButton');

              pdfButton.addEventListener('click', function() {
                pdfButton.style.display = 'none';
                homeButton.style.display = 'none';

                const element = document.body;
                const v = '<%= name %>';
                const options = {
                  filename: v + 'Pass.pdf',
                  jsPDF: { format: 'a3', orientation: 'landscape' }
//                  jsPDF: { format: [595.28 * 2, 400.89], orientation: 'landscape' }
                };

                html2pdf().set(options).from(element).save().then(function() {
                  pdfButton.style.display = 'block';
                  homeButton.style.display = 'block';
                  
                });
              });
            });
        </script>
    </body>
</html>
