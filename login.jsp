<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
String sql="select username,email,pwd from register where email=? and pwd=?";
String s="";   
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	pst=con.prepareStatement(sql);
   pst.setString(1,request.getParameter("email"));
   pst.setString(2,request.getParameter("pwd1"));
   rs=pst.executeQuery();
   if(rs.next()){
   s=rs.getString("username");
   response.sendRedirect("h2.html");
}
   else{
   out.println("<h1 align='center'>Invalid User</h1><br><a href='index.html'>Go Back</a>\n <h2 align='center'>User Not Found</h2>");
   
   }
}
catch(SQLException ex){
out.println(ex);
}
%>
