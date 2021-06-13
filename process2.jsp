<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=(String)session.getValue("EMAIL");
String c1=request.getParameter("c1");
String c2=request.getParameter("c2");
String c3=request.getParameter("c3");
String c4=request.getParameter("c4");
String c5=request.getParameter("c5");
String c6=request.getParameter("c6");
String c7=request.getParameter("c7");
String c8=request.getParameter("c8");
String c9=request.getParameter("c9");
String c10=request.getParameter("c10");
String c11=request.getParameter("c11");
String c12=request.getParameter("c12");
String c13=request.getParameter("c13");
String c14=request.getParameter("c14");
String c15=request.getParameter("c15");
String c16=request.getParameter("c16");
String c17=request.getParameter("c17");
String c18=request.getParameter("c18");
String c19=request.getParameter("c19");
String c20=request.getParameter("c20");
String c21=request.getParameter("c21");
String c22=request.getParameter("c22");
String c23=request.getParameter("c23"); 
String c24=request.getParameter("c24");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weddingplanner", "root", "root");
Statement st=conn.createStatement();


if(c1!=null)
{
   st.executeUpdate("insert into photo values('"+email+"','Traditional Wedding Photography','40000')");
    
}
if(c2!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Natural Wedding Photography','50000')");
}
if(c3!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Editorial Wedding Photography',50000)");

}
if(c4!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Black and White Wedding Photography','60000')");
}
if(c5!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Illustrative Wedding Photography','45000')");
}
if(c6!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Aerial Wedding Photography','48000')");
}
if(c7!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Aerial Wedding Photography','40000')");
}
if(c8!=null)
{
	st.executeUpdate("insert into photo values('"+email+"','Night Wedding Photography','60000')");
}
if(c9!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Rose','30000')");
}
if(c10!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Tulip','20000')");
}
if(c11!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Peony','28000')");
}
if(c12!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Orchid','23000')");
}
if(c13!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Stephanotis','29000')");
}
if(c14!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Hydrageas','19000')");
}
if(c15!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Gerbera Daisy','20000')");
}
if(c16!=null)
{
	st.executeUpdate("insert into flower values('"+email+"','Chrysanthemums','30000')");
}

if(c17!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','White Wedding Cakes','60000')");
}
if(c18!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Black Wedding Cakes','70000')");
}
if(c19!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Blue Wedding Cakes','65000')");
}
if(c20!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Grey Wedding Cakes','80000')");
}
if(c21!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Green Wedding Cakes','90000')");
} 
if(c22!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Metalic Wedding Cakes','70000')");
}
if(c23!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Geode Wedding Cakes','100000')");
}
if(c24!=null)
{
	st.executeUpdate("insert into cake values('"+email+"','Geometric Wedding Cakes','78000')");
}
response.sendRedirect("CHECKOUT.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>