<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Cust_Login where UName=? and Password=?");

String UserName=request.getParameter("UserName");
String Password=request.getParameter("Password");
String message="User login successfully ";

st.setString(1,UserName);
st.setString(2, Password);
st.executeUpdate();
ResultSet rs=st.executeQuery();
try{
if(rs.next())
   {
session.setAttribute("UserName",rs.getString("UName"));
session.setAttribute("Password",rs.getString("Password"));
response.sendRedirect("Home1.html?error="+message);
   }
else
    {
message="No user or password matched" ;
response.sendRedirect("LoginForm.html?error="+message);
    }
}
catch(Exception e)
{
out.println("cannot display the records1");
}
}
catch(Exception e)
{
out.println("cannot display the records");
}
%>
<h1>I am Jsp</h1>