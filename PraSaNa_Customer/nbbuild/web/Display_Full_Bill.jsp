<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<center><i>CART</i></center><br>
<%
int Total=0;
Connection con;
PreparedStatement st,st1; 
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
try{
int i=1;
String Item;
int NOI;
int Price;
st = con.prepareStatement("select *from Pra_Cust_Specific");
ResultSet rs=st.executeQuery();
try{
while(rs.next())
   {%>
<center>
<form action="DelRow.jsp" method="post">
<table style="width:300px" cellpadding="4">
<%Item= rs.getString(1);
Price= rs.getInt(2);
NOI = rs.getInt(4);%>
 
  <tr>
      <th align="center" width="70"><%=Item%></th>
      <th align="center" width="70"><%=Price%></th>
  </tr>
  
<%
Total+=Price;
i++; }%>
</table>
</form>
</center>
<%}
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
<br><br>

<center>
  <table style="width:300px">
  <tr>
      <th align="center" width="70">Total</th>
      <th align="center" width="70"><%=Total%></th>
  </tr>
  </table>
</center>
  
   <br><br>
  
<center>
<form action="Truncate.jsp" method="post" target="_top">
  <input type="submit" name="Pay" Value="Continue To Pay">
</form>
</center>