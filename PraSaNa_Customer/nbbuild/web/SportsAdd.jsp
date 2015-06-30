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
String [] Item=new String[4];
int [] ItemF = new int[4];
for(k=1;k<4;k++)
{
    Item[i]="ho";
    ItemF[i]=0;
}
int Price,No,NOI;
Statement st; 
PreparedStatement st1; 
Connection con;
if(Integer.parseInt(request.getParameter("Bat"))!=0)
{
  Item[1]="Bat"; 
  ItemF[1]=1;
}
if(Integer.parseInt(request.getParameter("Ball"))!=0)
{
  Item[2]="Ball";
  ItemF[2]=1;
}
if(Integer.parseInt(request.getParameter("Cok"))!=0)
{
  Item[3]="Cok";
  ItemF[3]=1;
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
for(k=1;k<4;k++)
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
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Bat"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Bat"))*500));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Ball"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Ball"))*100));
        rs.updateRow();
        ItemF[2]=0;
        break;
    case 3:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Cok"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Cok"))*50));
        rs.updateRow();
        ItemF[3]=0;
        break;
    default:
        }
l=0;
while(rs.next())
{
i++;
Item1 = rs.getString(1);
for(k=1;k<4;k++)
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
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Bat"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Bat"))*500));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Ball"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Ball"))*100));
        rs.updateRow();
        ItemF[2]=0;
        break;
   case 3:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Cok"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Cok"))*50));
        rs.updateRow();
        ItemF[3]=0;
        break;
    default:
        }
l=0;
}
}
st1 = con.prepareStatement("insert into  Pra_Cust_Specific values(?,?,?,?)");
for(k=1;k<4;k++)
{
   if(ItemF[k]!=0)
   {
    switch(k)
    {
      case 1:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Bat"))*500));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Bat")));
        st1.executeUpdate();
        break;
    case 2:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Ball"))*100));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Ball")));
        st1.executeUpdate();
        break;
   case 3:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Cok"))*50));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Cok")));
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

response.setHeader("Refresh", "5; URL=Sports.html");

%>
