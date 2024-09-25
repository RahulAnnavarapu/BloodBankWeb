<%@page import="BloodBankProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String mail=request.getParameter("e-mail");
String bloodgroup=request.getParameter("bloodgroup");
String status="pending";
try{
	Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insret into blood request values(?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,mobilenumber);
			ps.setString(3,mail);
			ps.setString(4,bloodgroup);
			ps.setString(5,status);
			ps.executeUpdate();
			response.sendRedirect("index.jsp?msg=valid");
	}
catch(Exception e)
{	
	response.sendRedirect("index.jsp?msg=valid");
}
%>