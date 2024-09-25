<%@page import="BloodBankProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.execute("delete from doner where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
	}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>