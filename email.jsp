<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
Statement st=null;
String email;
email=request.getParameter("email1");
int x=0;
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	st=con.createStatement();
	x=st.executeUpdate("insert into subscribe values ('"+email+"');");
}
catch(SQLException ex){
out.println(ex);
}
if(x>=0){
out.println("<h1> success</h1>");
}
response.sendRedirect("indexsub.html");
%>
