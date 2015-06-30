<%@ page language ="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

    <center><head>
		<title>Radar Chart</title>
		<script src="Chart.js"></script>
		<meta name = "viewport" content = "initial-scale = 1, user-scalable = no">
		<style>
			canvas{
			      }
		</style>
        </head></center>
	<body>
        <center><canvas id="canvas" height="450" width="450"></canvas></center>
<%int NOI;
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
   }%>
	<script>

		var pieData = [
                                {
					value: 10,
					color:"white"
				},
				{
					value: <%=a[0]%>,
					color:"Red"
				},
				{
					value: <%=a[1]%>,
					color:"DeepPink"
				},
                                {
					value: 10,
					color:"white"
				},
				{
					value: <%=a[2]%>,
					color:"Magenta"
				},
                                {
					value: <%=a[3]%>,
					color:"OrangeRed"
				},
                                {
					value: 10,
					color:"white"
				},
                                {
					value: <%=a[4]%>,
					color:"LightSalmon"
				},
				{
					value: <%=a[5]%>,
					color:"Orange"
				},
                                {
					value: 10,
					color:"white"
				},
				{
					value: <%=a[6]%>,
					color:"Maroon"
				},
                                {
					value: <%=a[7]%>,
					color:"Purple"
				},
                                {
					value: 10,
					color:"white"
				},
                                
                                {
					value: <%=a[8]%>,
					color:"Gray"
				},
                                {
					value: <%=a[9]%>,
					color:"SkyBlue"
				},
                                {
					value: <%=a[10]%>,
					color:"BlueViolet"
				},
                                {
					value: 10,
					color:"white"
				},
				{
					value: <%=a[11]%>,
					color:"Yellow"
				},
                                {
					value: <%=a[12]%>,
					color:"Orange"
				}

			
			];

	var myPie = new Chart(document.getElementById("canvas").getContext("2d")).Pie(pieData);
	
	</script>
	</body>
