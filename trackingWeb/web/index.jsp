<%-- 
    Document   : index
    Created on : May 15, 2016, 10:48:00 AM
    Author     : Aleksandar
--%>
<%@page import=" java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@ page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="shortcut icon" href="http://sstatic.net/stackoverflow/img/favicon.ico">
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tracking</title>
    </head>

    <body >

        <div class="wrapper">

            <h1 id="h1">World Tracking </h1>
            <h2>Unesite Invoice ili AWB broj</h2>
            <div id="form">
                <form action="display.jsp" method="post">
                    Invoice<br>
                    <input text="invoice" value=""/><br>
                    AWB<br>

                    <input text="awb" value=""/><br>
                    <br>
                    <div id="dugme">
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Enter</button>
                    </div>
                </form>
               
            </div>

           
            </div>
    </body>



</html>
