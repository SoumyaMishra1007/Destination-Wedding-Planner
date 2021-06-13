<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
session.putValue("EMAIL",email);
String password=request.getParameter("password");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weddingplanner","root","root");
Statement st= conn.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");

if(rs.next())
{

	response.sendRedirect("menu.html");
}

else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
