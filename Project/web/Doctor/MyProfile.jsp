<%-- 
    Document   : MyProfile
    Created on : Sep 25, 2021, 2:40:40 PM
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
        <form method="POST" name="frmdoc">
            <%
                String sel="select * from tbl_doctor where doctor_id='"+session.getAttribute("did")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                    
                
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td colspan="2" align="center">
                        <img style="border-radius: 50%" src="../Assets/Files/DoctorPhoto/<%=rs.getString("doctor_photo")%>" width="120" height="120"/>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <%=rs.getString("doctor_name")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <%=rs.getString("doctor_address")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs.getString("doctor_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs.getString("doctor_email")%>
                    </td>
                </tr>
            </table>
               <%
                }
                %>
        </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>