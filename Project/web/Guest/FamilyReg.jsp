<%-- 
    Document   : Family
    Created on : Sep 18, 2021, 9:15:49 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Family Registration</title>
    </head>
    <body>
        <div id="tab" align="center">
        <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/FamilyUploadAction.jsp" name="form5">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
        <tr><td>House Name</td>
                    <td><input type="text" name="txt_hname" id="txt_hname"required></td>
                </tr>
                <tr><td>House Number</td>
                    <td><input type="texT" name="txt_hnum" id="txt_hnum" required></textarea></td>
                </tr>
                <tr><td>Number Of Family Member</td>
                    <td><input type="text" name="txt_number" id="txt_number" required></td>
                </tr>
                <tr><td>Ration Card Number</td>
                    <td><input type="text" name="txt_rnum" id="txt_rnum" required></td>
                </tr>
                 <tr><td>Ration Card Proof</td>
                    <td><input type="file" name="file_proof" id="file"required></td>
                 </tr>
                <tr><td>Ward</td>
                    <td>
                        <select name=“sel_ward” id="sel_ward" onchange="getPlace(this.value)"required>
                            <option>---select----</option>
                        <%
                 String sel="select * from tbl_ward";
                 ResultSet rs = con.selectCommand(sel);
                 while(rs.next())
                 {
                     %>
                     <option value="<%=rs.getString("ward_id")%>"><%=rs.getString("ward_no")%></option>
                     <%
                 }
                 %>
                                         
                       </select>

                 </td>
                 </tr>
                 <tr><td>Place</td>
                 <td>
                     <select name=“sel_place” id="sel_place"required>
                     <option>---select----</option>
                     </select>
                 </td>
                 </tr>
                
                <tr><td>User name</td>
                    <td><input type="text" name="txt_user" id="txt_user"required></td>
                </tr>
                <tr><td>Password</td>
                    <td><input type="password" name="txt_password" id="txt_password"required></td>
                </tr>
                <tr><td>Retype Password</td>
                    <td><input type="password" name="txt_repassword" id="txt_repassword"required></td>
                </tr>
                
                 <tr>
                     <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_save" id="btn_save" value="Save"><input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                
                 </tr>
                </table>
        </form>
                 
<script src="../Assets/Jq/jquery.js"></script>
<script>
function getPlace(wid)
{
    
	$.ajax({
	url: "../Assets/AjaxPages/AjaxPlace.jsp?wid="+wid,
	  success: function(result){
		$("#sel_place").html(result);
	  }
	});
}
</script>
</div>
      </body>
      <%@include file="Foot.jsp" %>
</html>

