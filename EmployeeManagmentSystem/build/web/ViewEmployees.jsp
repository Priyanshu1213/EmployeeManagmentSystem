<%-- 
    Document   : ViewEmployees
    Created on : 3 Jul, 2023, 3:25:00 PM
    Author     : Basavaraju
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Employees </title>
    </head>
    <body>
        <table>
            <tr><th>Action</th><th>Slno</th><th>EmpId</th><th>FirstName</th><th>LastName</th><th>DOB</th><th>Contact</th><th>Email</th><th>Gender</th><th>Designation</th><th>Salary</th><th>State</th><th>Country</th><th>JoiningDate</th><th>WorkingHours</th><th>ZipCode</th><th>Password</th><th>EntryDate</th></tr>
        <%
            //Scriplet tag
             Connection con=null;
             try
             {
                 String url=application.getInitParameter("url");
                 String user=application.getInitParameter("user");
                 String pass=application.getInitParameter("password");
                 
                 con=DriverManager.getConnection(url, user, pass);
                 
                 String sql="select * from employee";
                 
                 Statement smt=con.createStatement();
                 ResultSet rs=smt.executeQuery(sql);
                 int slno=0;
                 while(rs.next())
                 {
                    slno++;
                    int empid=rs.getInt("empid");
        %>
            <tr><td><a href="" >Edit</a> | <a href="">Delete</a></td></tr>     

        <%
                 }
                 
                 
                 
             }
             catch(Exception e)
             {
                 out.print(e);
             }
             finally
             {
                 con.close();
             }
            
            
        %>  
        
        </table>
    </body>
</html>
