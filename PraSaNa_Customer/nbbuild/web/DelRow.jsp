<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
int i=1;
PreparedStatement st; 
Connection con;
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");

try{
st = con.prepareStatement("delete from Pra_Cust_Specific where No=?");
int No=Integer.parseInt(request.getParameter("row"));
st.setInt(1,No);
st.executeUpdate();
}catch(Exception e)
{
out.println("cannot display the records3");
}
try{
Statement st1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs = st1.executeQuery("Select No from Pra_Cust_Specific"); 
while(rs.next())
{
rs.updateInt(1,i);
rs.updateRow();
i++;
}
con.close();

response.sendRedirect("Cart.jsp");
}

catch(Exception e)
{
out.println("cannot display the records4");
}
%>