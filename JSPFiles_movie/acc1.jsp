<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
body  {
    background-image: url("https://wallpaper.wiki/wp-content/uploads/2017/04/wallpaper.wiki-Blue-and-Purple-Desktop-Background-PIC-WPB0014380.jpg");
    background-color: #cccccc;
}
</style>
      <style>
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}
.dropdown:hover .dropdown-content {
    display: block;
}

</style>
</head>
<div class="navbar">
<div class="dropdown">
    <button class="dropbtn">My Accounts
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="http://localhost:6184/jh/fi.jsp">Account Summary</a>
      <a href="#">Bank Account</a>
      <a href="http://localhost:6184/jh/col.jsp">College details</a>
      <a href="http://localhost:6184/jh/dep.jsp">Deposits</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Tranfer
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="http://localhost:6184/jh/tf.jsp">Fund Transfer</a>
      <a href="#">Status</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Schemes
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="http://localhost:6184/jh/sc.jsp">My Schemes</a>
      <a href="http://localhost:6184/jh/osc.jsp">Other Schemes</a>
    </div>
  </div> 
</div>
<h1><center>Bank accounts</center></h1>
<br>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    }
#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}
#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:hover {background-color: #ddd;}
#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
    text-align: left;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
    background-color: #4CAF50;
    color: black;
}

</style>
<body>
<% String driver="com.mysql.jdbc.Driver";
   String connectionUrl="jdbc:mysql://localhost:3306/bank";
   String username="root";
   String password="root123";
   try {
	   Class.forName(driver);
	   } catch (ClassNotFoundException e) {
	   e.printStackTrace();
	   }
	   Connection connection = null;
	   Statement statement = null;
	   ResultSet resultSet = null;
	   Cookie c[] = request.getCookies();
	   String user = c[1].getValue();
	   System.out.println(user);
	  connection = DriverManager.getConnection(connectionUrl,username, password);
	  String sql ="select * from banacc where usnno1=?";
	   PreparedStatement pst=connection.prepareStatement(sql);
	   pst.setString(1,user);
	  resultSet = pst.executeQuery();
	 
	  while(resultSet.next()){%>
	  <table>
	  <center>
	  <tr>
    <th><h3>Account No</h3></th>
    <th><h3>Branch name</h3></th>
    <th><h3>Branch Address</h3></th>
    <th><h3>IFSC code</h3></th>
     </tr>
     </center>
 <b2>
<tr>
<td><h3><%=resultSet.getString("accno")%></h3></td>
 <td><h3><%=resultSet.getString("bname")%></h3></td>
    <td><h3><%=resultSet.getString("baddress")%></h3></td>
    <td><h3> <%=resultSet.getString("ifsccode")%></h3></td>
    </tr>
    </b2>
    <%}%>
</table>
    </body>
</html>
