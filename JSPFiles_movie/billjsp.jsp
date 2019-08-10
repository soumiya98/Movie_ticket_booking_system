<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<%
Cookie c[]=request.getCookies();
String s1=(c[1].getValue());
//String numseat=c[2].getValue();
//out.println(numseat);
String movie_name="",time="",movie="",show=" ";
 String[] id;
 float cost=0;
 int j=0,screen=0;
String val=" ";%>
 <center>
<% Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/first","root","root");
   id = request.getParameterValues("checked");
   if(id==null)
   {
	   response.sendRedirect ("book.jsp");
   }
   else
   {
   //int no_seats=Integer.parseInt(numseat);
  // int no_of_seats=(id.length-no_seats);
   Statement s=con.createStatement();
   String q="select * from mov_pic where cid='"+s1+"'";
   
 
   ResultSet rs1=s.executeQuery(q);
   while(rs1.next())
   {
	   screen=rs1.getInt(4);
	  show=rs1.getString(5);
	   cost=rs1.getFloat(7);
	   movie=rs1.getString(2);
   	 time=rs1.getString(6);
   	// out.println(time);
   	 
   }
   
  for(int i=0;i<id.length;i++){
   
 
  // out.println(id[i]);
   PreparedStatement stmt = con.prepareStatement("update seat1 set checked =? where id1='"+time+"' and seat_id='"+id[i]+"'");
   stmt.setInt(1,1);
   
   int value= stmt.executeUpdate();
   //out.println(value);
   
  }

  
  
%>

  <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">SEE TICKET</button>


  <div id="id01" class="modal">
    
    <form class="modal-content animate" action="/action_page.php">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
        <img src="https://cdn2.vectorstock.com/i/1000x1000/42/01/popcorn-soda-takeaway-and-movie-tickets-vector-16694201.jpg" alt="Avatar" class="avatar">
      </div>

      <div class="container">
       <label for="moviename"><b>Movie Name:</b></label>
       
       <p><%= movie %></p>
      
        
        
        <label for="seatnumber"><b>Number of Seats:</b></label>
        <p><%=(id.length)%></p>
        
       
        <label for="moviename"><b>Seat number:</b></label>
        <p><%for(int k=0;k<id.length;k++){ %>
              <%=id[k] %>
               </p>
               <%} %>
       
         <label for="moviename"><b>Total Amount:</b></label>
         <p><%=(cost*id.length) %></p>
         
          <label for="moviename"><b>Screen No</b></label>
         <p><%=screen%></p>
         
          <label for="moviename"><b>Show Timing:</b></label>
         <p><%=show %></p>
        
          
          
        
      </div>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">OK</button>
       
      </div>
    </form>
  </div>

  <script>
  // Get the modal
  var modal = document.getElementById('id01');

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  </script>

<form action="seat_selected.jsp" method="post">
<input type="submit" value="MAKE PAYMENT">
</form>

<form action="disp_pic.jsp" method="post">
<input type="submit" value="GO BACK">
</form>



<%
String picURL1=" ",picURL2= " ",picURL3=" ",picURL4=" ",picURL5=" ",picURL6=" ";

 

ResultSet rs4 = s.executeQuery("select image from mov_pic where cid = '"+4+"'");
while (rs4.next()) {
	picURL4=rs4.getString("image");
%>
<table>
<tr>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="4"><img src="<%= picURL4 %>" alt="Submit"  width="300" height="350"></button></td>
  </form>
   <%} %>
   
   
 <% 
ResultSet rs5= s.executeQuery("select image from mov_pic where cid = '"+5+"'");
while (rs5.next()) {
	picURL5=rs5.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="5"><img src="<%= picURL5 %>" alt="Submit"  width="300" height="350"></button></td>
  </form>
   <%} %>
   
   <% 
 ResultSet rs6 = s.executeQuery("select image from mov_pic where cid = '"+6+"'");
while (rs6.next()) {
	picURL6=rs6.getString("image");
%>
  <form action="nextPage.jsp" method="post">
  <td><button type="submit" name="mov" value="6"><img src="<%= picURL6 %>" alt="Submit"  width="300" height="350"></button></td>
  </form>
   <%} 
   %>
   
  </tr>
 </table> 
</center>
<%} %>
</body>
</html>