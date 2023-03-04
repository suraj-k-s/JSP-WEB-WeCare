<%-- 
    Document   : FamilyMembers.jsp
    Created on : Oct 9, 2021, 12:23:01 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
     <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="tab" align="center">
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Name</th>
                <th>Photo</th>
                <th>gender</th>
                <th>contact</th>
                <th>Email</th>
                <th>DOB</th>
                <th>Adhar Number</th>
                <th>Relation</th>
                <th>Job Status</th>
                <th>Action</th>
               
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_familymembers fm inner join tbl_familyrole fo on fm.fr_id=fo.fr_id inner join tbl_family f on f.family_id=fm.family_id where fm.family_id='"+request.getParameter("uid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("member_name")%></td>
                <td><img src="../Assets/FamilyMemberPhoto/<%=rs.getString("member_photo")%>" width="120" height="120"></td>
                <td><%=rs.getString("member_gender")%></td>
                <td><%=rs.getString("member_contact")%></td>
                <td><%=rs.getString("member_email")%></td>
                <td><%=rs.getString("member_dob")%></td>
                <td><%=rs.getString("member_adhaarno")%></td>
                <td><%=rs.getString("fr_name")%></td>
                <td><%=rs.getString("member_jobstatus")%></td>
                <td>
                    <a href="FamilyVaccine.jsp?mid=<%=rs.getString("member_id")%>">Vaccine Details</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    </body>
      <%@include file="Foot.jsp" %>
</html>
