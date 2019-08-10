<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
    <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <style>
        body{
        background-color:#000000	;
        }
        
.container {
    position: relative;
    font-family: Arial;
}

.text-block {
    position: absolute;
    bottom: 10px;
    right: 10px;
    background-color:black;
    color: white;
    padding-left: 10px;
    padding-right: 10px;
}
p.cursive {
    font-family: Comic Sans, Comic Sans MS, cursive;
    font-size:14px;
}
.text-block1 {
    position: absolute;
    bottom: 30px;
    left: 10px;
    background-color: black;
    color: white;
    padding-left: 10px;
    padding-right: 10px;
}
.checked {
    color: orange;
}
.ribbon{
position:absolute;
top:0px;
right:0px;

}
.play {
    position:absolute;
 
    bottom: 0px;
  left: 20px;
}

</style>
        
    </head>
    <body>
    <% 
    String id=request.getParameter("mov");
    System.out.println(id);
    Cookie c=new Cookie("myC",id);
    response.addCookie(c);
   
     Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/first","root","root" );  
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from movie_det where cid1='"+id+"'");
        while(rs.next())
        {
        	String video=rs.getString(2);
        	String image=rs.getString(3);
        	String lang=rs.getString(5);
        	
        	String syp=rs.getString(4);
        	String gen=rs.getString(6);
        	String duration=rs.getString(8);
        	String rating=rs.getString(7);
        
        
        int rate=Integer.parseInt(rating);
        	 %>
        	
        
        
       
    <iframe width="830" height="400" src=<%=video%> frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
</iframe>
        
<div class="ribbon">
  <img src=<%=image%> alt="Nature" style="width:500px;height:700px;" >
  </div>
  <%if (rate==3){ %>
  
  <div class="text-block">
    
<h1>RATING</h1>

<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>


</div>
<%} %>

<%if (rate==1){ %>
  
  <div class="text-block">
    
<h1>RATING</h1>

<span class="fa fa-star checked"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>


</div>
<%} %>


<%if (rate==2){ %>
  
  <div class="text-block">
    
<h1>RATING</h1>

<span class="fa fa-star checked"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>


</div>
<%} %>



<%if (rate==4){ %>
  
  <div class="text-block">
    
<h1>RATING</h1>

<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>


</div>
<%} %>



<%if (rate==5){ %>
  
  <div class="text-block">
    
<h1>RATING</h1>

<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>


</div>
<%} %>
<div class="text-block1">

<p class="cursive">

<B>LANGUAGE:</B><%=lang %><br>
<B>GENRE:</B><%=gen %><br>
<B>DURATION:</B> <%=duration %><br>


<B>SYNOPSIS:</B><br>
<%=syp %>
</div>
<%} %>
<div class="play">
<form action="book.jsp" method="post">


<input type="submit" value="BOOK TICKET">

</form>
</div>
    </body>
</html>