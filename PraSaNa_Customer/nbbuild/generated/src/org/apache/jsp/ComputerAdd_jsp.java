package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class ComputerAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
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
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i3"))*30000));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i3"))*31000));
        rs.updateRow();
        ItemF[2]=0;
        break;
    case 3:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i3"))*32000));
        rs.updateRow();
        ItemF[3]=0;
        break;
    case 4:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i5"))*50000));
        rs.updateRow();
        ItemF[4]=0;
        break;
    case 5:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i5"))*55000));
        rs.updateRow();
        ItemF[5]=0;
        break;
    case 6:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i5"))*53000));
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
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i3"))*30000));
        rs.updateRow();
        ItemF[1]=0;
        break;
    case 2:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i3"))*31000));
        rs.updateRow();
        ItemF[2]=0;
        break;
    case 3:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i3"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i3"))*32000));
        rs.updateRow();
        ItemF[3]=0;
        break;
    case 4:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Lenovo-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Lenovo-i5"))*50000));
        rs.updateRow();
        ItemF[4]=0;
        break;
    case 5:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Dell-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Dell-i5"))*55000));
        rs.updateRow();
        ItemF[5]=0;
        break;
    case 6:
        rs.updateInt(4,rs.getInt(4)+(Integer.parseInt(request.getParameter("Sony-i5"))));
        rs.updateInt(2,rs.getInt(2)+(Integer.parseInt(request.getParameter("Sony-i5"))*53000));
        rs.updateRow();
        ItemF[6]=0;
        break;
    default:
        }
l=0;
}
}
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

response.setHeader("Refresh", "5; URL=Computers.html");


      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
