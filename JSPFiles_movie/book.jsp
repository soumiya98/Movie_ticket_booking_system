<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function myFunction(){
	alert("Make sure you have selected valid number of seats")
}
</script>
<style>
    .container { position: relative; ; height: 100px; float: left; margin-left: 30px; }
    .checkbox  { position: absolute;  left: 40px; top: 10px; background-color: red ; zoom:1.5}
    
    
 </style>
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="billjsp.jsp" method="post">
<%
int seat_no[]=new int[40];
String time=" ";
 Cookie c[]=request.getCookies();
String s1=(c[1].getValue());
//out.println(s1);
int i=1,f=0,idd=1,s=1,j=0;
int flag[]=new int[40];
String str[]=new String[40];
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/first","root","root");
Statement stmt = con.createStatement();
String q="select * from mov_pic where cid='"+s1+"'";
ResultSet rs1=stmt.executeQuery(q);
while(rs1.next())
{
	 time=rs1.getString(6);
	 //out.println(time);
	 
}

//String q1="select  * from seat1 where checked='1' and id1='"+time+"'";
//ResultSet rs2=stmt.executeQuery(q1);
//while(rs2.next())
//{
	 
//	j++;

//}
//out.println(j);

//String q2="insert into new_table values(?)";
//PreparedStatement ps=con.prepareStatement(q2);
//ps.setInt(1,j);
//ps.executeUpdate();
//Cookie y=new Cookie("my",Integer.toString(j));

//response.addCookie(y);

String query="select * from seat1 where id1='"+time+"'";
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
	
	 f=rs.getInt(3);
	 flag[i]=f;
	//out.println(f);
	i++;
}
for(i=1;i<=32;i++){
if(flag[i]==1){
	str[i]="disabled checked";
}
else
	str[i]=" ";
}

for(int k=0;k<4;k++){	
%>

<table>
<%
if(k==0)
{
	%>
	<td class="row" colspan="2">
<div class="container">&nbsp;</div>
</td>
	
	<%} %>
 
	 
<tr>
<td class="row" colspan="2">
<div class="container" >
<img src="sofa1.jpg" /> 
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>/> 
</div>
</td>


<td class="row" colspan="2">
<div class="container">
    <img src="sofa1.jpg" /> 
    
    <input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %> />
</div>
</td>


<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" /> 
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>  />
</div>
</td>


<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" />    
<input type="checkbox" class="checkbox"  name="checked" value="<%= idd++%>"<%=str[s++] %>  />
</div>
</td>

<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" /> 
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>  />
</div>
</td>



<td class="row" colspan="2">
<div class="container">&nbsp;</div>
</td>

<td class="row" colspan="2">
<div class="container">&nbsp;</div>
</td>

<td class="row" colspan="2">
<div class="container">&nbsp;</div>
</td>

<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" />     
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>  />
</div>
</td>

<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" />     
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>  />
</div>
</td>

<td class="row" colspan="2">
<div class="container">
<img src="sofa1.jpg" />     
<input type="checkbox" class="checkbox" name="checked" value="<%= idd++%>" <%=str[s++] %>  />
</div>
</td>

</tr>

</table>
<%} %>
<center><B>SCREEN THIS WAY</B></center>
<input type="submit" onclick="myFunction()" value="submit">
</form>
</body>
</html>