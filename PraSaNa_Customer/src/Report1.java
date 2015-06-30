import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Report1 extends HttpServlet
{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/txt");
		PrintWriter pw=res.getWriter();
		
		pw.println("<center>");
		pw.println("Student Report<br>");
		pw.println("Student name:<br>");
		pw.println("Average :");
		pw.println("</center");
	}
}
