<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
Statement st=null;
int num=1;
String name,mail,comment;
name=request.getParameter("name");
mail=request.getParameter("email2");
comment=request.getParameter("comments");
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	st=con.createStatement();
	int x=st.executeUpdate("insert into contact values("+num+",'"+name+"','"+mail+"','"+comment+"');");
	num++;
if(x==0)
  out.println("Error in DataBase");
    
}
catch(SQLException ex){
out.println(ex);

}
%>
<h1 align="center" style="font-family: algerian;color: red;">Thank You<br>
    <%=name%></%></h1><br>
    <p><h2 style="color: cadetblue" align="center">Your query will be resolved as soon as possible</h2></p>
    <br><br></r>
<a href="index.html"><button style="font-size: 30px;margin-left:50px ">BACK</button></a>