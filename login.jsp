<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%
     String email = request.getParameter("email");
     String password = request.getParameter("password");
     try 
	 {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","preethu");
        String qry ="select *from register where email=? and password=?";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,email);
        pstmt.setString(2,password);
        ResultSet rs=pstmt.executeQuery();
        if(rs.next())
	    {
			out.print("<center><h1 style='color: red;'>Login Succussful</h1></center>");
            session.setAttribute("email", email); 
            response.sendRedirect("available jobs.html"); 
        }
        else
        {
%>
	    <center>
		        <h1 style='color: red;'>Login failed</h1>
				<jsp:include page="login.html"/>
	    </center>
<% 
        }
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
%>