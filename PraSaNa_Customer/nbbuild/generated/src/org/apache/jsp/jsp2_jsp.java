package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class jsp2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>sample</title>\n");
      out.write("</head>\n");
      out.write("<form method=\"post\">\n");
      out.write("UserName:\n");
      out.write("<input type=\"text\" name=\"t1\" value=\"Ram\">\n");
      out.write("<br>\n");
      out.write("Roll no: \n");
      out.write("<input type=\"text\" name=\"t2\" value=\"23\" >\n");
      out.write("<br>\n");
      out.write("<input type=\"submit\" name=\"sub\">\n");

int k=0;
String fname=request.getParameter("t1");
String k1=request.getParameter("t2");
if(k1!="23")
{
try
{
k=Integer.parseInt(k1);
}catch(Exception e){
   out.println("cannot display the records1"); 
}
}


      out.write('\n');

try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","manager");
PreparedStatement st; 
if((fname!="Ram") && (k1!="23"))
{
st = con.prepareStatement("insert into sample1 values(?,?)");
st.setString(1,fname);
st.setInt(2, k);
st.executeUpdate();
}	
	 

      out.write('\n');
	   
}
catch(Exception e)
{
out.println("cannot display the records");
}

      out.write("\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
