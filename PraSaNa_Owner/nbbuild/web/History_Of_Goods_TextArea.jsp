<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<center><h1>History of Goods</h1></center><br>
<%
int i=1;
String Item,Date,CNAME;
int NOI;
int Price;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Owner_HOG");
ResultSet rs=st.executeQuery();%> 
<%
while(rs.next())
   {%>
 
   <center>
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
NOI= rs.getInt(2);
CNAME= rs.getString(3);
Date= rs.getString(4);%>
 
  <tr>
      <th align="center" width="100"><%=Item%></th>
      <th align="center" width="100"><%=NOI%></th>
      <th align="center" width="100"><%=CNAME%></th>
      <th align="center" width="200"><%=Date%></th>
  </tr>
  
<%
i++; }%>
</table>
</center>