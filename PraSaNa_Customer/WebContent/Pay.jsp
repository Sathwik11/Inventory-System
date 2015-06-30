<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
try{
int i=1;
String Item;
int NOI;
int Price;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("Truncate table Pra_Cust_Specific");
ResultSet rs=st.executeQuery();
}
catch(Exception e)
{
out.println("cannot display the records1");
}
%>