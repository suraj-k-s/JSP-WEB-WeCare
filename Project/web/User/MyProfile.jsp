<%-- 
    Document   : MyProfile.jsp
    Created on : Oct 1, 2021, 10:43:20 AM
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
       <form method="post" name="myprofile">
            <%
           
                String sel1 = "select * from tbl_family where family_id = '"+session.getAttribute("uid")+"'";
               
                ResultSet rs = con.selectCommand(sel1);
                if(rs.next())
                {
           
           
            %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               
                <tr><td>House Number</td>
                    <td>
                        <%=rs.getString("family_hno")%>
                    </td>
                </tr>
                <tr><td>House Name</td>
                    <td><%=rs.getString("family_hname")%></td>
                </tr>
                <tr>
                    <td>Ration Card Number</td>
                    <td>
                        <%=rs.getString("family_rno")%>
                    </td>
                </tr>
                 <tr><td>Number Of Members</td>
                    <td>
                        <%=rs.getString("family_memno")%>
                    </td>
               
               
               </table>
            <%
                }
            %>
        </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
