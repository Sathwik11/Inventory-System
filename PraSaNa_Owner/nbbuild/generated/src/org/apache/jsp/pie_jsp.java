package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class pie_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <center><head>\n");
      out.write("\t\t<title>Radar Chart</title>\n");
      out.write("\t\t<script src=\"Chart.js\"></script>\n");
      out.write("\t\t<meta name = \"viewport\" content = \"initial-scale = 1, user-scalable = no\">\n");
      out.write("\t\t<style>\n");
      out.write("\t\t\tcanvas{\n");
      out.write("\t\t\t      }\n");
      out.write("\t\t</style>\n");
      out.write("        </head></center>\n");
      out.write("\t<body>\n");
      out.write("        <center><canvas id=\"canvas\" height=\"450\" width=\"450\"></canvas></center>\n");
int NOI;
int [] a=new int[13];
int i=0;
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
st = con.prepareStatement("select *from Pra_Owner_GSOLD");
ResultSet rs=st.executeQuery();

while(rs.next())
   {
   NOI = rs.getInt(2); 
   a[i]=NOI;
   i++;
   }
      out.write("\n");
      out.write("\t<script>\n");
      out.write("\n");
      out.write("\t\tvar pieData = [\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[0]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Red\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[1]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"DeepPink\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[2]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Magenta\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[3]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"OrangeRed\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[4]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"LightSalmon\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[5]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Orange\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[6]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Maroon\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[7]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Purple\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                \n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[8]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Gray\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[9]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"SkyBlue\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[10]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"BlueViolet\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: 10,\n");
      out.write("\t\t\t\t\tcolor:\"white\"\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[11]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Yellow\"\n");
      out.write("\t\t\t\t},\n");
      out.write("                                {\n");
      out.write("\t\t\t\t\tvalue: ");
      out.print(a[12]);
      out.write(",\n");
      out.write("\t\t\t\t\tcolor:\"Orange\"\n");
      out.write("\t\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t];\n");
      out.write("\n");
      out.write("\tvar myPie = new Chart(document.getElementById(\"canvas\").getContext(\"2d\")).Pie(pieData);\n");
      out.write("\t\n");
      out.write("\t</script>\n");
      out.write("\t</body>\n");
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
