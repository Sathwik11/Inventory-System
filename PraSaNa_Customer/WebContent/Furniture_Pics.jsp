<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<style>
.img
{
opacity:0.2;
filter:alpha(opacity=40); /* For IE8 and earlier */
}

</style>

<%
int i=1;
String [] Name=new String[10];
int [] NOI=new int[10];
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Owner_Furniture_Avail");
ResultSet rs=st.executeQuery();
try{
while(rs.next())
   {
Name[i]= rs.getString(1);
NOI[i]= rs.getInt(2);
i++;
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

<form action="FurnituresAdd.jsp" method="post" target="_top">
<center><table cellspacing="40">
<tr>
<%if(NOI[1]==0)
{%>
<td><img  class="img" alt="Chair" src="Furnitures\Chair.jpg" height="150" width="200" border="0"/></td>
<%}else{%>
<td><img alt="Chair" src="Furnitures\Chair.jpg" height="150" width="200" border="0"/></td>
<%}%>
<%if(NOI[2]==0)
{%>
<td><img class="img" alt="Bench" src="Furnitures\Bench.jpg" height="150" width="200" border="0"/></td>
<%}else{%>
<td><img alt="Bench" src="Furnitures\Bench.jpg" height="150" width="200" border="0"/></td>
<%}%>
</tr>

<tr>
<td>Number of pieces :&nbsp;&nbsp;<input type="text" name="Chair" size="2" maxlength="3" value="<%=NOI[1]%>">&nbsp;x 100</td>
<td>Number of pieces :&nbsp;&nbsp;<input type="text" name="Bench" size="2" maxlength="3" value="<%=NOI[2]%>">&nbsp;x 500</td>
</tr>

</table>
<center>
   <input type="submit" name="AddToCart" Value="Add To Cart">
    </form>
</center>
</center>