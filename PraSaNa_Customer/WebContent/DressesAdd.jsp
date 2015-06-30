<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
int l=0;
int k=1;
int i=0;
int count=1;
String Item1;
String [] Item=new String[3];
int [] ItemF = new int[3];
for(k=1;k<3;k++)
{
    Item[i]="ho";
    ItemF[i]=0;
}
int Price,No,NOI;
Statement st; 
PreparedStatement st1; 
Connection con;
if(Integer.parseInt(request.getParameter("Shirt"))!=0)
{
  Item[1]="Shirt"; 
  ItemF[1]=1;
}
if(Integer.parseInt(request.getParameter("Pant"))!=0)
{
  Item[2]="Pant";
  ItemF[2]=1;
}

try{
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select *from Pra_Cust_Specific");
try{
if(rs.next())
{
i++;
Item1 = rs.getString(1);
for(k=1;k<3;k++)
{
    if(Item1.equals(Item[k]))
    {
        l=k;
        break;
    }
}
if(l!=0)
switch(k)
        {
    case 1:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Shirt"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Shirt"))*300));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Pant"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Pant"))*500));
        rs.updateRow();
        ItemF[2]=0;
        break;
    default:
        }
l=0;
while(rs.next())
{
i++;
Item1 = rs.getString(1);
for(k=1;k<3;k++)
{
    if(Item1.equals(Item[k]))
    {
        l=k;
        break;
    }
}
if(l!=0)
switch(k)
        {
    case 1:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Shirt"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Shirt"))*300));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Pant"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Pant"))*500));
        rs.updateRow();
        ItemF[2]=0;
        break;
    default:
        }
l=0;
}
}
st1 = con.prepareStatement("insert into  Pra_Cust_Specific values(?,?,?,?)");
for(k=1;k<3;k++)
{
   if(ItemF[k]!=0)
   {
    switch(k)
    {
      case 1:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Shirt"))*300));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Shirt")));
        st1.executeUpdate();
        break;
    case 2:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Pant"))*500));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Pant")));
        st1.executeUpdate();
        break;
    default:
    }
   }
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

response.setHeader("Refresh", "5; URL=Dresses.html");

%>
