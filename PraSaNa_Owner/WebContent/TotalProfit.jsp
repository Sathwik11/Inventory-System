<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
int Total=0;
Connection con;
PreparedStatement st; 
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
st=con.prepareStatement("select Profit from TOTAL_PROFIT");
ResultSet rs=st.executeQuery();
if(rs.next())
{
    Total=rs.getInt(1);
}

%>

<br><br><br><br><br><br><br><br><br>
<center><%=Total%></center>