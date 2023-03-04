<%-- 
    Document   : WardMember.jsp
    Created on : Sep 18, 2021, 9:04:18 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
        <title>Ward Member Registration</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/WardMemberUploadAction.jsp" name="form3">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="txt_name" id="txt_name" pattern="[A-Za-z ]*$" required>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea id="txt_address" name="txt_address" rows="3" cols="20"required></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" id="gender" value="Male" checked>Male
                        <input type="radio" name="gender" id="gender" value="Female">Female
                        <input type="radio" name="gender" id="gender" value="Others">Others
                    </td>
                </tr
                <tr>
                    <td>Contact No1</td>
                    <td>
                        <input type="text" name="txt_contact1" id="txt_contact1" pattern="^[7-9][0-9]{9}$" required>
                    </td>
                </tr>
                <tr>
                    <td>Contact No2</td>
                    <td>
                        <input type="text" name="txt_contact2" id="txt_contact2" pattern="^[7-9][0-9]{9}$">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txt_email" id="txt_email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                    </td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td>
                        <input type="file" name="wmember_photo" id="txt_photo" required>
                    </td>
                </tr>
                <tr>
                    <td>Ward</td>
                    <td>
                        <select name=“sel_ward” id="sel_ward" onchange="getPlace(this.value)"required>
                            <option>--select--</option>
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
                <tr>
                    <td>Place</td>
                    <td>
                        <select name=“sel_place” id="sel_place" required>
                            <option>--select--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Adhar No</td>
                    <td>
                        <input type="text" name="txt_adhar" id="txt_adhar" pattern="^[1-9][0-9]{11}$" required>
                    </td>
                </tr>
                <tr>
                    <td>Period From</td>
                    <td>
                        <input type="date" name="from" id="from" required>
                    </td>
                </tr>
                <tr>
                    <td>Period To</td>
                    <td>
                        <input type="date" name="to" id="to"required>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <input type="text" name="txt_uname" id="txt_uname"required>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="txt_pswd" id="txt_pswd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password" name="txt_confirmpswd" id="txt_confirmpswd"required>
                    </td>
                </tr>
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
    </body>
</html>
