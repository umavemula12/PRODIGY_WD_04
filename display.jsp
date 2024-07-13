<%@ page import="java.sql.*,java.io.*" %>
<html>
  <head>
    <title>Online Job Portal</title>
    <link rel="stylesheet" href="display.css">
  </head>
  <body>
    <header>
        <h1>Online Job Portal</h1>
        <nav>
            <a href="home.html">Home</a>
			<a href="display.jsp">Profile</a>
			<a href="available jobs.html">Available Jobs</a>
			<a href="logout.jsp"">Logout</a>
        </nav>
    </header>
<%
     String email = (String) session.getAttribute("email"); 
	 if (email == null) {
				response.sendRedirect("login.html");  
                return; 
     }
     try
     {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","preethu");
        String qry="select *from register where email=?";
		PreparedStatement stmt=con.prepareStatement(qry);
		stmt.setString(1, email);
        ResultSet rs=stmt.executeQuery();
        while(rs.next())
        {
%>
	    <center></br></br></br></br>
         <table border="5",text align:center>
           <tr>
		      <th>Full Name:</th>
		      <td><%= rs.getString(1) %></td>
		   </tr>
           <tr>
		      <th>Email:</th>
			  <td><%= rs.getString(2) %></td>
		   </tr>
           <tr>
		      <th>Gender</th>
			  <td><%= rs.getString(5) %></td>
		   </tr>
           <tr>
		      <th>Phone:</th>
			  <td><%= rs.getLong(6) %></td>
		   </tr>
           <tr>
		      <th>Address:</th>
			  <td><%= rs.getString(7) %></td>
		   </tr>
           <tr>
		      <th>Position:</th>
			  <td><%= rs.getString(8) %></td>
		   </tr>
		   <tr>
		      <th>Experience:</th>
			  <td><%= rs.getInt(9) %></td>
		   </tr>
		   <tr>
		      <th>Skills:</th>
			  <td><%= rs.getString(10) %></td>
		   </tr>
		   <tr>
		      <th>Languages:</th>
			  <td><%= rs.getString(11) %></td>
		   </tr>
           <tr>
		       <th>Distinction:</th>
			   <td><%= rs.getString(12) %></td>
		   </tr>      
<%
	    }
%>
        </table>
	   </center>
<%
       con.close();
     }
      catch(Exception e)
      {
        out.print(e);
      }
%>
      </center>
      <footer>Copy Right @KANDUKURI PREETHI 22761A0590</footer>
   </body>
</html>