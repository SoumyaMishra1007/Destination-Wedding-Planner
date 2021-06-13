<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=(String)session.getValue("EMAIL");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weddingplanner", "root", "root");
Statement st=conn.createStatement();
if(request.getParameter("b1")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Lalitha Mahal Palace','500000')");
	response.sendRedirect("menu.html");
}
if(request.getParameter("b2")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Neemrana Fort','600000')");	
	response.sendRedirect("menu.html");
	
}
if(request.getParameter("b3")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Umaid Bhawan Palac','800000')");
	response.sendRedirect("menu.html");
}
if(request.getParameter("b4")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Oberoi Udaivilas','800000')");
    response.sendRedirect("menu.html");	
}
if(request.getParameter("b5")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Leela Palace',1000000)");	
     response.sendRedirect("menu.html");
}
if(request.getParameter("b6")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Lalit Laxmi Vilas',1000000)");	
    response.sendRedirect("menu.html");
}
if(request.getParameter("b7")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Trident',700000)");	
    response.sendRedirect("menu.html");
}
if(request.getParameter("b8")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Jai Mahal Palace',750000)");
	response.sendRedirect("menu.html");
}
if(request.getParameter("b9")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Fateh Prakash Palace',650000)");
    response.sendRedirect("menu.html");
}
if(request.getParameter("b10")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Palace Ground',800000)");
    response.sendRedirect("menu.html");
}
if(request.getParameter("b11")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Sainik Farms',780000)");
    response.sendRedirect("menu.html");
}
if(request.getParameter("b12")!=null)
{
	int i=st.executeUpdate("insert into destination values('"+email+"','Royal Orchid Fort Resort',900000)");
    response.sendRedirect("menu.html");
}
}

	catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>