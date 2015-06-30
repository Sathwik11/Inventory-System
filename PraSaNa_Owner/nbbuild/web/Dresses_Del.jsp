<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%
int i=1;
String Item;
int NOI;
int Price;
String USERNAME=(String)session.getAttribute("UserName");
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st;
st=con.prepareStatement("UPDATE Pra_Owner_Dresses_Avail SET NOI=NVL((select NOI from Pra_Owner_Dresses_Avail where Name=?),0)-? WHERE Name =?");

if(Integer.parseInt(request.getParameter("Shirt"))!=0)
{
       st.setString(1,"Shirt");
       st.setInt(2,Integer.parseInt(request.getParameter("Shirt")));
       st.setString(3,"Shirt");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Pant"))!=0)
{
       st.setString(1,"Pant");
       st.setInt(2,Integer.parseInt(request.getParameter("Pant")));
       st.setString(3,"Pant");
       st.executeUpdate();
}

%>

<center><h1>
        Items are Deleted...
</h1></center>
<% 
response.setHeader("Refresh", "2; URL=FirstPage.html");
%>