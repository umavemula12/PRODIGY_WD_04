<%@ page import="java.sql.*" %>
<html>
   <head>
     <title>Online Job Portal</title>
   </head>
   <body>
<%
     String fullname=request.getParameter("fullname");
     String email=request.getParameter("email");
     String password=request.getParameter("password");
     String confirm_password=request.getParameter("confirm_password");
     String gender=request.getParameter("gender");
     long phone=Long.parseLong(request.getParameter("phone"));
     String address=request.getParameter("address");
     String position=request.getParameter("position");
     int experience=Integer.parseInt(request.getParameter("experience"));
     String skills=request.getParameter("skills");
     String languages=request.getParameter("languages");
     String distinction=request.getParameter("distinction");
     try
     {
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","preethu");
		 String qry="insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)";
		 PreparedStatement pst=con.prepareStatement(qry);
		 pst.setString(1,fullname);
		 pst.setString(2,email);
		 pst.setString(3,password);
		 pst.setString(4,confirm_password);
		 pst.setString(5,gender);
		 pst.setLong(6,phone);
		 pst.setString(7,address);
		 pst.setString(8,position);
		 pst.setInt(9,experience);
		 pst.setString(10,skills);
		 pst.setString(11,languages);
		 pst.setString(12,distinction);
		 pst.executeUpdate();
		 out.println("<center><h2 style='color: red;'>"+fullname+"Regitstered Successful</h2></center>");	
%>
		 <jsp:include page="login.html"/>
		 
<%
	con.close();
	}
	catch(Exception e)
	{
		 out.print(e);
	}
%>