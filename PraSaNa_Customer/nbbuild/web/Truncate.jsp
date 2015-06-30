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
PreparedStatement st,st1,st2,st_1,st_2,st_3,st_4; 
st1 = con.prepareStatement("select *from Pra_Cust_Specific");
st = con.prepareStatement("insert into Pra_Owner_HOG values(?,?,?,?)");
st_1=con.prepareStatement("UPDATE Pra_Owner_Computer_Avail SET NOI=NVL((select NOI from Pra_Owner_Computer_Avail where Name=?),0)-? WHERE Name =?");
st_2=con.prepareStatement("UPDATE Pra_Owner_Furniture_Avail SET NOI=NVL((select NOI from Pra_Owner_Furniture_Avail where Name=?),0)-? WHERE Name =?");
st_3=con.prepareStatement("UPDATE Pra_Owner_Sports_Avail SET NOI=NVL((select NOI from Pra_Owner_Sports_Avail where Name=?),0)-? WHERE Name =?");
st_4=con.prepareStatement("UPDATE Pra_Owner_Dresses_Avail SET NOI=NVL((select NOI from Pra_Owner_Dresses_Avail where Name=?),0)-? WHERE Name =?");
st2=con.prepareStatement("UPDATE Pra_Owner_GSOLD SET NOI=NVL((select NOI from Pra_Owner_GSOLD where Name=?),0)+? WHERE Name =?");
ResultSet rs=st1.executeQuery();
while(rs.next())
   {
       Item= rs.getString(1);
       NOI = rs.getInt(4);
       st.setString(1,Item);
       st.setInt(2,NOI);
       st.setString(4,java.util.Calendar.getInstance().getTime().toString());
       st.setString(3,USERNAME);
       st.executeUpdate();
       st2.setString(1,Item);
       st2.setInt(2, NOI);
       st2.setString(3,Item);
       st2.executeUpdate();
       st_1.setString(1,Item);
       st_1.setInt(2, NOI);
       st_1.setString(3,Item);
       st_1.executeUpdate();
       st_2.setString(1,Item);
       st_2.setInt(2, NOI);
       st_2.setString(3,Item);
       st_2.executeUpdate();
       st_3.setString(1,Item);
       st_3.setInt(2, NOI);
       st_3.setString(3,Item);
       st_3.executeUpdate();
       st_4.setString(1,Item);
       st_4.setInt(2, NOI);
       st_4.setString(3,Item);
       st_4.executeUpdate();
       
   }
Statement st3 = con.createStatement();
st3.executeUpdate("Truncate table Pra_Cust_Specific");

response.setHeader("Refresh", "5; URL=Thanks.jsp");
%>