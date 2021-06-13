<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=(String)session.getValue("EMAIL");
try
{   ResultSet rs;
	String s1="select * from destination where email='"+email+"'";
	String s2="select * from photo where email='"+email+"'";
	String s3="select * from flower where email='"+email+"'";
	String s4="select * from cake where email='"+email+"'";
	String s5="select sum(lprice) from(select email,lprice, location from destination where email='"+email+"' union all select email,pprice,photo from photo where email='"+email+"'  union all select email, fprice,flower from flower where email='"+email+"'  union all select email, cprice, cake from cake where email='"+email+"') as totalprice" ;
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weddingplanner", "root", "root");
Statement st=conn.createStatement();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <link href="nav.css" rel="stylesheet" type="text/css" media="all">
    <link href="checkout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
    <div class="nav">
        <nav id="mainav" class="clear"> 
          <!-- ################################################################################################ -->
          <ul class="clear">
            <li><a href="landing.html">Home</a></li>
                <li><a class="drop" href="#">Venues</a>
                <ul>
                  <li><a href="menu.html">Destination</a></li>
                  <li><a href="menu.html">Photography</a></li>
                  <li><a href="menu.html">Flowers</a></li>
                  <li><a href="menu.html">Cakes</a></li>
                </ul>
              </li>       
          <li class="active"><a href="#">Logout</a>
            </ul>
        </nav>
 </div> 
  <form method="POST">
   <div class="form">
    <h1 class="para">Checkout Form</h1>
    <hr>
   <div  class="display">
     <label> Destination Name:</label>
<% rs=st.executeQuery(s1);
if(rs.next())
  { %>  
  <input type="text" value="<%=rs.getString("location")%>">
   </div> 
   <div class="display">
    <label>Price:</label>
    <input type="text" value="<%=rs.getString("lprice")%>">
  </div> 
  <%} 
  rs=st.executeQuery(s3);
  while(rs.next())
  {
	  %>  
  <div class="display">
    <label> Flowers Name:</label>
    <input type="text" value="<%=rs.getString("flower")%>">
  </div>
  <div  class="display"> 
  <label>Price:</label>
  <input type="text" value="<%=rs.getString("fprice")%>">
</div>
<%} 
 rs=st.executeQuery(s2);
 while(rs.next()){%>
  <div class="display">
    <label> Photography Name:</label>
    <input type="text" value="<%=rs.getString("photo")%>">
  </div> 
  <div  class="display">
  <label>Price:</label>
  <input type="text" value="<%=rs.getString("pprice")%>">
</div>
<%} 
rs=st.executeQuery(s4);
if(rs.next()){%>
<div class="display">
<label> Cakes Name:</label>
<input type="text" value="<%=rs.getString("cake")%>">
</div> 
<div  class="display">
<label>Price:</label>
<input type="text" value="<%=rs.getString("cprice")%>">
</div>
<%} 
rs=st.executeQuery(s5);
if(rs.next()){%>

<div class="display">
<label>Total Amount:</label>
<input type="text" value="<%=rs.getString("sum(lprice)")%>">
</div> 
<%}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<label>Payment Method ^^</label>
<ul class="icon-bar">
  <li class="icon"><a class="icon-a" href="developer.paytm.com/docs/v1/payment-link/"><i class="fa fa-paypal" id="icon-i"></i></a></i></li>
  <li class="icon"><a class="icon-a" href="pay.google.com"><i class="fa fa-google" id="icon-i"> pay</i></a></i></li>
  <li class="icon"><a class="icon-a"><i id="icon-i">C</i></a></i></li>
</ul>
<div class="display">
<label>Pay Amount</label>
<input type="text">
</div>
   </div>      
  </form>
  
<footer class="footer">
    <h1>MY WEDDING!</h1>
    <p class="para">Copyright &copy; 2021 - All Rights Reserved - <a href="#">Rohit Soumya Saloni and Pranjal</a></p>
  </footer>
  <a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
  <!-- JAVASCRIPTS -->
  <script src="layout/scripts/jquery.min.js"></script>
  <script src="layout/scripts/jquery.backtotop.js"></script>
  <script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
 