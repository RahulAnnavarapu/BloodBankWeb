<%
String UserName=request.getParameter("UserName");
String PassWord=request.getParameter("PassWord");
if("admin".equals(UserName) && "admin".equals(PassWord))
{
response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
	
}
%>