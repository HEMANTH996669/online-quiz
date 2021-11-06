<%@ page import="java.io.*,jva.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
Statement st=null;
int num=1;
String usrname,mail,pass;
usrname=request.getParameter("usr");
mail=request.getParameter("emailreg");
pass=request.getParameter("pwd");
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	st=con.createStatement();
	int x=st.executeUpdate("insert into register values("+num+",'"+usrname+"','"+mail+"','"+pass+"');");
if(x==0)
  out.println("Error in DataBase");
else{
 out.println("Welcome "+usrname);   
 response.sendRedirect("h2.html");  
}
   num++;
}
catch(SQLException ex){
out.println(ex);
}
%>