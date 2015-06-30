package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;

public final class Truncate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

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
