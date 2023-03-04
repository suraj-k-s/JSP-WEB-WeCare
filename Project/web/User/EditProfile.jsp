<%-- 
    Document   : EditProfile
    Created on : Sep 25, 2021, 2:23:53 PM
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
        <form method="post" name="editprofile">
            <%
            if(request.getParameter("btn_edit")!=null)
                {
                   
                    String up = "update tbl_family set family_hno = '"+request.getParameter("txt_name")+"'"
                            + ",family_hname='"+request.getParameter("txt_house")+"',"
                            + "family_memno = '"+request.getParameter("txt_mem")+"'"
                            + "where family_id='"+session.getAttribute("uid")+"'";
                 
                    con.executeCommand(up);
                  response.sendRedirect("MyProfile.jsp");
                   
                }

               
                String sel = "select * from tbl_family where family_id = '"+session.getAttribute("uid")+"'";
              
                ResultSet rs = con.selectCommand(sel);
                if(rs.next())
                {
           
           
            %>
        <form method="post" name="editprfoile">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr><td>Family Number</td>
                    <td>
                        <input type="text" name="txt_name" id="txt_name" value="<%=rs.getString("family_hno")%>">
                    </td>
                </tr>
                <tr><td>Family Name</td>
                    <td>
                        <input type="text" name="txt_house" id="txt_house" value="<%=rs.getString("family_hname")%>">
                    </td>
                </tr>
                <tr>
                    <td>Number Of Family</td>
                    <td>
                        <input type="text" name="txt_mem" id="txt_mem" value="<%=rs.getString("family_memno")%>">
                    </td>
                </tr>
               
               
               
               
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_edit" id="btn_edit" value="EDIT"></td>
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
