<%-- 
    Document   : internetCat
    Created on : 4 Ιαν 2014, 8:19:42 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/internetCat.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internet Category</title>
    </head>
    <body background="images/internet_background.jpg">
        
     <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
                  <h1>Small Tips</h1>
           </FONT>
     </div>
    <div id="Header">
        <h1><b>Internet</b></h1>
    </div>  

  <div id="homePage">
        <a href="index.jsp">Go back to Home page</a>.
  </div>
        
        <br>
        <div id="internet_post">
        <form action="addInternetTips.jsp" method="post">
        <p>Add your tip here... </p><br>
        <textarea name="i_post" placeholder="Type your text here..." cols="25" rows="5" required/></textarea><br>
        <input type="submit" value="Sumbit"/>
        </form>
        </div>
        
    </body>
</html>
