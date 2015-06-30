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
st=con.prepareStatement("UPDATE Pra_Owner_Furniture_Avail SET NOI=NVL((select NOI from Pra_Owner_Furniture_Avail where Name=?),0)-? WHERE Name =?");

if(Integer.parseInt(request.getParameter("Chair"))!=0)
{
       st.setString(1,"Chair");
       st.setInt(2,Integer.parseInt(request.getParameter("Chair")));
       st.setString(3,"Chair");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Bench"))!=0)
{
       st.setString(1,"Bench");
       st.setInt(2,Integer.parseInt(request.getParameter("Bench")));
       st.setString(3,"Bench");
       st.executeUpdate();
}

%>

<center><h1>
        Items are Deleted...
</h1></center>
<% 
response.setHeader("Refresh", "2; URL=FirstPage.html");
%>