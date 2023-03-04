<%-- 
    Document   : memberhealth
    Created on : Sep 18, 2021, 10:00:35 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member health</title>
    </head>
    <body>
        <div id="tab" align="center">
        
        <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/MemberHealthUploadAction.jsp" name="form9">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center"
         <tr><td>Main health issue Name</td>
                 <td><select name="mhin"required>
                     <option>---select----</option>
                     <%
                         String sel="select * from tbl_mainhealthissues";
                         ResultSet rs = con.selectCommand(sel);
                 while(rs.next())
                 {
                     %>
                     <option value="<%=rs.getString("msi_id")%>"><%=rs.getString("msi_name")%></option>
                     <%
                 }
                       %>
                     </select>
                 </td>
                 </tr>
                 <tr><td>Member Name</td>
                 <td><select name="member" required>
                     <option>---select----</option>
                     <%
                 String sell="select * from tbl_familymembers where family_id='"+session.getAttribute("uid")+"'";
                 ResultSet rs2 = con.selectCommand(sell);
                 while(rs2.next())
                 {
                     %>
                     <option value="<%=rs2.getString("member_id")%>"><%=rs2.getString("member_name")%></option>
                     <%
                 }
                 %>
                     </select>
                 </td>
                 </tr>
                 <tr><td>Proof</td>
                    <td><input type="file" name="file_proof" id="file_proof" required></td>
                 </tr>
                 <tr>
                     <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_save" id="btn_save" value="Save"><input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                    </tr>
                 
            </table>
        </form>
    </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
