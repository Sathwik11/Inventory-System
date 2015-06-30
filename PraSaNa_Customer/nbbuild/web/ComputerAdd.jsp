<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
int x;
int l=0;
int k=1;
int i=0;
int count=1;
String Item1;
String [] Item=new String[7];
int [] ItemF = new int[7];
for(k=1;k<7;k++)
{
    Item[i]="ho";
    ItemF[i]=0;
}
int Price,No,NOI;
Statement st; 
PreparedStatement st1; 
Connection con;
if(Integer.parseInt(request.getParameter("Lenovo-i3"))!=0)
{
  Item[1]="Lenovo-i3"; 
  ItemF[1]=1;
}
if(Integer.parseInt(request.getParameter("Dell-i3"))!=0)
{
  Item[2]="Dell-i3";
  ItemF[2]=1;
}
if(Integer.parseInt(request.getParameter("Sony-i3"))!=0)
{
  Item[3]="Sony-i3";
  ItemF[3]=1;
}
if(Integer.parseInt(request.getParameter("Lenovo-i5"))!=0)
{
  Item[4]="Lenovo-i5"; 
  ItemF[4]=1;
}
if(Integer.parseInt(request.getParameter("Dell-i5"))!=0)
{
  Item[5]="Dell-i5"; 
  ItemF[5]=1;
}
if(Integer.parseInt(request.getParameter("Sony-i5"))!=0)
{
  Item[6]="Sony-i5"; 
  ItemF[6]=1;
}

try{
Class.forName("oracle.jdbc.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select *from Pra_Cust_Specific");
try{
if(rs.next())
{
i++;
Item1 = rs.getString(1);
for(k=1;k<7;k++)
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
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i3"))*30000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i3"))*31000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[2]=0;
        break;
    case 3:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i3"))*32000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[3]=0;
        break;
    case 4:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i5"))*50000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[4]=0;
        break;
    case 5:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i5"))*55000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[5]=0;
        break;
    case 6:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i5"))*53000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[6]=0;
        break;
    default:
        }
l=0;
while(rs.next())
{
i++;
Item1 = rs.getString(1);
for(k=1;k<7;k++)
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
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i3"))*30000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i3"))*31000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[2]=0;
        break;
    case 3:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i3")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i3"))*32000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[3]=0;
        break;
    case 4:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i5"))*50000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[4]=0;
        break;
    case 5:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i5"))*55000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[5]=0;
        break;
    case 6:
        x=rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i5")));
        rs.updateInt(4,x);
        x=rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i5"))*53000);
        rs.updateInt(2,x);
        rs.updateRow();
        ItemF[6]=0;
        break;
    default:
        }
l=0;
}
}
}
catch(Exception e)
{
out.println("cannot display the records1");
}
rs.close();
st1 = con.prepareStatement("insert into  Pra_Cust_Specific values(?,?,?,?)");
for(k=1;k<7;k++)
{
   if(ItemF[k]!=0)
   {
    switch(k)
    {
      case 1:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Lenovo-i3"))*30000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Lenovo-i3")));
        st1.executeUpdate();
        break;
    case 2:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Dell-i3"))*31000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Dell-i3")));
        st1.executeUpdate();
        break;
    case 3:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Sony-i3"))*32000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Sony-i3")));
        st1.executeUpdate(); 
        break;
    case 4:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Lenovo-i5"))*50000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Lenovo-i5")));
        st1.executeUpdate();
        break;
    case 5:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Dell-i5"))*55000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Dell-i5")));
        st1.executeUpdate();
        break;
    case 6:
        st1.setString(1, Item[k]);
        st1.setInt(2, (Integer.parseInt(request.getParameter("Sony-i5"))*53000));
        st1.setInt(3, ++i);
        st1.setInt(4, Integer.parseInt(request.getParameter("Sony-i5")));
        st1.executeUpdate();
        break;  
    default:
    }
   
   }
}
st.close();

}
catch(Exception e)
{
out.println("cannot display the records");
}

response.setHeader("Refresh", "5; URL=Computers.html");

%>
