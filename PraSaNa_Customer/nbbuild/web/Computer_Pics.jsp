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
st = con.prepareStatement("select *from Pra_Owner_Computer_Avail");
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

<form action="ComputerAdd.jsp" method="post" target="_top">
<center><table cellspacing="40">
<tr>
<%if(NOI[1]==0||NOI[2]==0)
{%>
<td><img class="img" alt="Lenovo" src="Computers\Lenovo.jpg" height="150" width="200" border="0"/></td>
<%}else{%>
<td><img alt="Lenovo" src="Computers\Lenovo.jpg" height="150" width="200" border="0"/></td>
<%}%>
<%if(NOI[3]==0||NOI[4]==0)
{%>
<td><img class="img" alt="Dell" src="Computers\Dell.jpg" height="150" width="200" border="0"/></td>
<%}else{%>
<td><img alt="Dell" src="Computers\Dell.jpg" height="150" width="200" border="0"/></td>
<%}%>
<%if(NOI[5]==0||NOI[6]==0)
{%>
<td><img class="img" alt="Sony" src="Computers\Sony.jpg" height="150" width="200" border="0"/></td>
<%}else{%>
<td><img alt="Sony" src="Computers\Sony.jpg" height="150" width="200" border="0"/></td>
<%}%>
</tr>

<tr>
<td>i3&nbsp;&nbsp;<input type="text" name="Lenovo-i3" size="2" maxlength="3" value="<%=NOI[1]%>">&nbsp;x 30,000</td>
<td>i3&nbsp;&nbsp;<input type="text" name="Dell-i3" size="2" maxlength="3" value="<%=NOI[3]%>">&nbsp;x 31,000</td>
<td>i3&nbsp;&nbsp;<input type="text" name="Sony-i3" size="2" maxlength="3" value="<%=NOI[5]%>">&nbsp;x 32,000</td>
</tr>

<tr>
<td>i5&nbsp;&nbsp;<input type="text" name="Lenovo-i5" size="2" maxlength="3" value="<%=NOI[2]%>">&nbsp;x 50,000</td>
<td>i5&nbsp;&nbsp;<input type="text" name="Dell-i5" size="2" maxlength="3" value="<%=NOI[4]%>">&nbsp;x 55,000</td>
<td>i5&nbsp;&nbsp;<input type="text" name="Sony-i5" size="2" maxlength="3" value="<%=NOI[6]%>">&nbsp;x 53,000</td>
</tr>

</table>
<center>
   <input type="submit" name="AddToCart" Value="Add To Cart">
    </form>
</center>
</center>