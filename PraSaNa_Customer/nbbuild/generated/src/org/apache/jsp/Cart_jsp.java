package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<center><i>CART</i></center><br>\n");

int Total=0;
try{
int i=1;
String Item;
int NOI;
int Price;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Cust_Specific");
ResultSet rs=st.executeQuery();
try{
while(rs.next())
   {
      out.write("\n");
      out.write("<center>\n");
      out.write("<form action=\"DelRow.jsp\" method=\"post\">\n");
      out.write("<table style=\"width:300px\" cellpadding=\"4\">\n");
Item= rs.getString(1);
Price= rs.getInt(2);
NOI = rs.getInt(4);
      out.write("\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("      <th align=\"center\"><input type=\"hidden\" name=\"row\" value=\"");
      out.print(i);
      out.write("\"></th>\n");
      out.write("      <th align=\"center\" width=\"70\"><input type=\"submit\" name=\"Delete\" Value=\"x\"></th>\n");
      out.write("      <th align=\"center\" width=\"70\">");
      out.print(Item);
      out.write("</th>\n");
      out.write("      <th align=\"center\" width=\"70\">");
      out.print(Price);
      out.write("</th>\n");
      out.write("  </tr>\n");
      out.write("  \n");

Total+=Price;
i++; }
      out.write("\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</center>\n");
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


      out.write("\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("  <table style=\"width:300px\">\n");
      out.write("  <tr>\n");
      out.write("      <th align=\"center\" width=\"100\">Total</th>\n");
      out.write("      <th align=\"center\" width=\"10\">");
      out.print(Total);
      out.write("</th>\n");
      out.write("  </tr>\n");
      out.write("  </table>\n");
      out.write("</center>\n");
      out.write("  \n");
      out.write("  <br><br>\n");
      out.write("<center>\n");
      out.write("<form action=\"Display_Full_Bill.jsp\" method=\"post\" target=\"_top\">\n");
      out.write("  <input type=\"submit\" name=\"Pay\" Value=\"Click to Pay\">\n");
      out.write("</form>\n");
      out.write("</center>");
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
