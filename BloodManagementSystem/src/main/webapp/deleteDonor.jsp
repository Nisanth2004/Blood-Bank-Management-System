<%@page import="com.nisanth.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}

%>