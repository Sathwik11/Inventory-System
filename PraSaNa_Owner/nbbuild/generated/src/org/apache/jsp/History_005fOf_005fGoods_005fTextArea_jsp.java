package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class History_005fOf_005fGoods_005fTextArea_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<center><h1>History of Goods</h1></center><br>\n");

int i=1;
String Item,Date,CNAME;
int NOI;
int Price;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Owner_HOG");
ResultSet rs=st.executeQuery();
      out.write(' ');
      out.write('\n');

while(rs.next())
   {
      out.write("\n");
      out.write(" \n");
      out.write("   <center>\n");
      out.write("<table style=\"width:300px\" cellpadding=\"4\">\n");
Item= rs.getString(1);
NOI= rs.getInt(2);
CNAME= rs.getString(3);
Date= rs.getString(4);
      out.write("\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("      <th align=\"center\" width=\"50\">");
      out.print(Item);
      out.write("</th>\n");
      out.write("      <th align=\"center\" width=\"50\">");
      out.print(NOI);
      out.write("</th>\n");
      out.write("      <th align=\"center\" width=\"50\">");
      out.print(CNAME);
      out.write("</th>\n");
      out.write("      <th align=\"center\" width=\"100\">");
      out.print(Date);
      out.write("</th>\n");
      out.write("  </tr>\n");
      out.write("  \n");

i++; }
      out.write("\n");
      out.write("</table>\n");
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
