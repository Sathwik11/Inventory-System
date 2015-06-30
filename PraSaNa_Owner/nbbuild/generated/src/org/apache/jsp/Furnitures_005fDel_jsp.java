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

public final class Furnitures_005fDel_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

int i=1;
String Item;
int NOI;
int Price;
String USERNAME=(String)session.getAttribute("UserName");
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st;
st=con.prepareStatement("UPDATE Pra_Owner_Furniture_Avail SET NOI=NVL((select NOI from Pra_Owner_Furniture_Avail where Name=?),0)-? WHERE Name =?");

if(Integer.parseInt(request.getParameter("Chair"))!=0)
{
       st.setString(1,"Chair");
       st.setInt(2,Integer.parseInt(request.getParameter("Chair")));
       st.setString(3,"Chair");
       st.executeUpdate();
}
if(Integer.parseInt(request.getParameter("Bench"))!=0)
{
       st.setString(1,"Bench");
       st.setInt(2,Integer.parseInt(request.getParameter("Bench")));
       st.setString(3,"Bench");
       st.executeUpdate();
}


      out.write("\r\n");
      out.write("\r\n");
      out.write("<center><h1>\r\n");
      out.write("        Items are Deleted...\r\n");
      out.write("</h1></center>\r\n");
 
response.setHeader("Refresh", "2; URL=FirstPage.html");

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
