<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 

h1{
font-size: 2.5em;
text-align: center;
}
    .container { position: relative; ; height: 100px; float: left; margin-left: 10px; }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="p">
<h1>Pick A Movie</h1>
</div>
<%
String picURL1=" ",picURL2= " ",picURL3=" ",picURL4=" ",picURL5=" ",picURL6=" ";
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/first","root","root" );  
Statement stmt = con.createStatement();
%>
<table style="width:100%">

<tr>
<%
ResultSet rs1 = stmt.executeQuery("select image from mov_pic where cid = '"+1+"'");
while (rs1.next()) {
	picURL1=rs1.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="1"><img src="<%= picURL1 %>" alt="Submit"  width="300" height="350"></button> <p>SHOW TIMING: 9:30 <p><p>Screen: 1</p></td>
 
  </form>
   <%} %>
   
   
 <% 
 ResultSet rs2 = stmt.executeQuery("select image from mov_pic where cid = '"+2+"'");
while (rs2.next()) {
	picURL2=rs2.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="2"><img src="<%= picURL2 %>" alt="Submit"  width="300" height="350"></button><p>SHOW TIMING: 2:30</p><p>Screen: 1</p> </td>
  <p>
  </form>
   <%} %>
   
   <% 
 ResultSet rs3 = stmt.executeQuery("select image from mov_pic where cid = '"+3+"'");
while (rs3.next()) {
	picURL3=rs3.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="3"><img src="<%= picURL3 %>" alt="Submit"  width="300" height="350"></button><p>SHOW TIMING: 18:30</p><p>Screen: 1</p></td>
  </form>
   <%} %>
  </tr>
  <br>
  <br>
  
<tr>
<td class="column" colspan="2">
<div class="container">&nbsp;</div>
</td>
</tr>

 <tr>
<%
ResultSet rs4 = stmt.executeQuery("select image from mov_pic where cid = '"+4+"'");
while (rs4.next()) {
	picURL4=rs4.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="4"><img src="<%= picURL4 %>" alt="Submit"  width="300" height="350"></button><p>SHOW TIMING: 9:30</p><p>Screen: 2</p></td>
  </form>
   <%} %>
   
   
 <% 
ResultSet rs5= stmt.executeQuery("select image from mov_pic where cid = '"+5+"'");
while (rs5.next()) {
	picURL5=rs5.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="5"><img src="<%= picURL5 %>" alt="Submit"  width="300" height="350"></button><p>SHOW TIMING: 2:30</p><p>Screen: 2</p></td>
  </form>
   <%} %>
   
   <% 
 ResultSet rs6 = stmt.executeQuery("select image from mov_pic where cid = '"+6+"'");
while (rs6.next()) {
	picURL6=rs6.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="6"><img src="<%= picURL6 %>" alt="Submit"  width="300" height="350"></button><p>SHOW TIMING: 18:30</p><p>Screen: 2</p></td>
  </form>
   <%} 
   %>
   
  </tr>
  
  
  
  </table>
 
<%--- 
<form action="bookNow.jsp" method="post">

  First name: <input type="text" name="fname"><br>
  <input type="image" src="gg.jpg" alt="Submit" width="100" height="100">
</form>

</body>
</html>
--%>
</body>
</html>

