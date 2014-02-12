<%-- 
    Document   : addInternetTips
    Created on : 15 Ιαν 2014, 10:29:13 μμ
    Author     : Jim
--%>

<link rel="stylesheet" type="text/css" href="css/internetCat.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%  request.setCharacterEncoding("UTF-8");

    String username=(String)session.getAttribute("username");   
    String i_post = request.getParameter("i_post");
    i_post = i_post.replace("\'","\'\'");
    int i_rate = 0;
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8","root", "%za9261");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into i_posts( username, i_post ) values ('" + username + "','" + i_post + "')");
    
    String QueryString = "SELECT * from i_posts";
    ResultSet rs = null;
rs = st.executeQuery(QueryString);
%>
<body background="images/hardware_background.jpg">
   
<div id ="smallTips">
    <FONT COLOR="#FFFFFF">
        <h1>Small Tips</h1>
    </FONT>
</div>

<div id="homePage">
    <a href="index.jsp">Go back to Home page</a>.
</div>
 
<div id="Header">
    <h1><b>Internet</b></h1>
</div> 
    
<TABLE cellpadding="25" border="1" style="background-color: #ffffff;">
<TR>
<TH><h3>Username</h3></TH>
<TH><h3>Tip</h3></TH>
<TH><h3>Rate</h3></TH>
<TH><h3>Vote+</h3></TH>
<TH><h3>Vote-</h3></TH>
</TR> 
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
<TD><button style="background-color:#003380" type="button"><a href="likeInternet.jsp">Like</a></button></TD>
<TD><button style="background-color:#003380" type="button"><a href="dislikeInternet.jsp">Dislike</a></button></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
st.close();
con.close();
%>

</TABLE>
</font>
</body>
</html>
