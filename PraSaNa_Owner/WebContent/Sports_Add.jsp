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
st=con.prepareStatement("UPDATE Pra_Owner_Sports_Avail SET NOI=NVL((select NOI from Pra_Owner_Sports_Avail where Name=?),0)+? WHERE Name =?");

if(Integer.parseInt(request.getParameter("Bat"))!=0)
{
       st.setString(1,"Bat");
       st.setInt(2,Integer.parseInt(request.getParameter("Bat")));
       st.setString(3,"Bat");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Ball"))!=0)
{
       st.setString(1,"Ball");
       st.setInt(2,Integer.parseInt(request.getParameter("Ball")));
       st.setString(3,"Ball");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Cok"))!=0)
{
       st.setString(1,"Cok");
       st.setInt(2,Integer.parseInt(request.getParameter("Cok")));
       st.setString(3,"Cok");
       st.executeUpdate();
}

%>

<center><h1>
        Items are Added...
</h1></center>
<% 
response.setHeader("Refresh", "2; URL=FirstPage.html");
%>