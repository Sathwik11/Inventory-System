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
st=con.prepareStatement("UPDATE Pra_Owner_Computer_Avail SET NOI=NVL((select NOI from Pra_Owner_Computer_Avail where Name=?),0)-? WHERE Name =?");
if(Integer.parseInt(request.getParameter("Lenovo-i3"))!=0)
{
       st.setString(1,"Lennovo-i3");
       st.setInt(2,Integer.parseInt(request.getParameter("Lenovo-i3")));
       st.setString(3,"Lennovo-i3");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Dell-i3"))!=0)
{
       st.setString(1,"Dell-i3");
       st.setInt(2,Integer.parseInt(request.getParameter("Dell-i3")));
       st.setString(3,"Dell-i3");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Sony-i3"))!=0)
{
       st.setString(1,"Sony-i3");
       st.setInt(2,Integer.parseInt(request.getParameter("Sony-i3")));
       st.setString(3,"Sony-i3");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Lenovo-i5"))!=0)
{
       st.setString(1,"Lenovo-i5");
       st.setInt(2,Integer.parseInt(request.getParameter("Lenovo-i5")));
       st.setString(3,"Lennovo-i5");
       st.executeUpdate(); 
}
if(Integer.parseInt(request.getParameter("Dell-i5"))!=0)
{
       st.setString(1,"Dell-i5");
       st.setInt(2,Integer.parseInt(request.getParameter("Dell-i5")));
       st.setString(3,"Dell-i5");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Sony-i5"))!=0)
{
       st.setString(1,"Sony-i5");
       st.setInt(2,Integer.parseInt(request.getParameter("Sony-i5")));
       st.setString(3,"Sony-i5");
       st.executeUpdate();
}

%>

<center><h1>
        Items are Removed...
</h1></center>
<% 
response.setHeader("Refresh", "2; URL=FirstPage.html");
%>