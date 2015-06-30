<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<center><h1>Availability of Goods</h1></center><br>
<%
int i=1;
String Item;
int NOI;
int Price;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Owner_Computer_Avail");
ResultSet rs=st.executeQuery();%>
<center><h4>Computers</h4></center><br> 
<%
while(rs.next())
   {%>
 
   <center>
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
NOI= rs.getInt(2);%>
 
  <tr>
      <th align="center" width="70"><%=Item%></th>
      <th align="center" width="70"><%=NOI%></th>
  </tr>
  
<%
i++; }%>
</table>
</center>

<%st = con.prepareStatement("select *from Pra_Owner_Furniture_Avail");
rs=st.executeQuery();%>
<center><h4>Furnitures</h4></center><br> 
<%
while(rs.next())
   {%>
 
   <center>
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
NOI= rs.getInt(2);%>
 
  <tr>
      <th align="center" width="70"><%=Item%></th>
      <th align="center" width="70"><%=NOI%></th>
  </tr>
  
<%
i++; }%>
</table>
</center>

<%st = con.prepareStatement("select *from Pra_Owner_Dresses_Avail");
rs=st.executeQuery();%>
<center><h4>Dresses</h4></center><br> 
<%
while(rs.next())
   {%>
 
   <center>
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
NOI= rs.getInt(2);%>
 
  <tr>
      <th align="center" width="70"><%=Item%></th>
      <th align="center" width="70"><%=NOI%></th>
  </tr>
  
<%
i++; }%>
</table>
</center>

<%st = con.prepareStatement("select *from Pra_Owner_Sports_Avail");
rs=st.executeQuery();%>
<center><h4>Sports</h4></center><br> 
<%
while(rs.next())
   {%>
 
   <center>
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
NOI= rs.getInt(2);%>
 
  <tr>
      <th align="center" width="70"><%=Item%></th>
      <th align="center" width="70"><%=NOI%></th>
  </tr>
  
<%
i++; }%>
</table>
</center>
