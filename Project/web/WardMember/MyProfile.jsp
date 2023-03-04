<%-- 
    Document   : MyProfile.jsp
    Created on : Sep 25, 2021, 8:53:10 PM
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
        <title>My Profile</title>
    </head>
    <body>
        <div id="tab" align="center">
        <form method="POST" name="frmdoc">
            <%
                String sel="select * from tbl_wardmember where wm_id='"+session.getAttribute("wmid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                    
                
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td colspan="2">
                        <img style="border-radius: 50%" src="../Assets/Files/WardMemberProof/<%=rs.getString("wm_photo")%>" width="120" height="120" align="center"/>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <%=rs.getString("wm_name")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <%=rs.getString("wm_address")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs.getString("wm_contact1")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs.getString("wm_email")%>
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