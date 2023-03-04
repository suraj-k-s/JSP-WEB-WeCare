<%-- 
    Document   : EditProfile.jsp
    Created on : Sep 24, 2021, 7:30:31 PM
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
        <title>Edit Profile</title>
    </head>
    <body>
        <div id="tab" align="center">
        <form method="POST" name="frmedit">
        <%
            if(request.getParameter("btn_edit")!=null)
                {
                    
                    String up = "update tbl_ashaworker set aw_name = '"+request.getParameter("txt_name")+"'"
                            + ",aw_address='"+request.getParameter("txt_address")+"',"
                            + "aw_contact='"+request.getParameter("txt_contact")+"',"
                            + "aw_email = '"+request.getParameter("txt_email")+"'"
                            + "where aw_id='"+session.getAttribute("awid")+"'";
                    
                    con.executeCommand(up);
                    response.sendRedirect("EditProfile.jsp");
                    
                }
                
                String sel="select * from tbl_ashaworker where aw_id='"+session.getAttribute("awid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {
                    
                
                %>
        
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>  
                    <td>Name</td>
                    <td>
                        <input type="text" name="txt_name" value="<%=rs.getString("aw_name")%>">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea rows="5" cols="30" name="txt_address" ><%=rs.getString("aw_address")%></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" name="txt_contact" value="<%=rs.getString("aw_contact")%>">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txt_email" value="<%=rs.getString("aw_email")%>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit"name="btn_edit" id="btn_edit" value="Edit">
                        
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

