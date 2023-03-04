<%-- 
    Document   : Ashaworker.jsp
    Created on : Sep 18, 2021, 3:51:09 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
  <%@include file="Head.jsp" %>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Ashaworker</title>
        </head>
        <body>
            <div id="tab" align="center">
            <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/AshaworkerUploadAction.jsp" name="form11">
                <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                    <tr><td>Name</td>
                        <td><input type="text" name="txt_name" id="txt_name" pattern="[A-Za-z ]*$" required></td>
                    </tr>
                    <tr><td>Address</td>
                        <td><input type="textarea" name="txt_address" id="txt_address"required></textarea></td>
                    </tr>
                    <tr><td>Contact</td>
                        <td><input type="text" name="txt_contact" id="txt_contact" pattern="^[7-9][0-9]{9}$" required></td>
                    </tr>
                    <tr><td>Email</td>
                        <td><input type="email" name="txt_email" id="txt_email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></td>
                    </tr>
                    <tr><td>Gender</td>
                        <td>
                            <input type="radio" name="radio_gender" id="radio_gender1" value="Male" required>Male
                            <input type="radio" name="radio_gender" id="radio_gender2" value="Female">Female
                            <input type="radio" name="radio_gender" id="radio_gender3" value="Others">Others
                        </td>
                    </tr>
                    <tr><td>Adhar number</td>
                        <td><input type="text" name="txt_adhar" id="txt_adhar" pattern="^[1-9][0-9]{11}$" required></td>
                    </tr>
                    <tr><td>Photo</td>
                        <td><input type="file" name="file_photo" id="file" required></td>
                    </tr>
                    <tr><td>Ward</td>
                        <td><select name=“sel_ward” id="sel_ward" onchange="getPlace(this.value)" required>
                                <option>---select----</option>
                            <%
                                String sel = "select * from tbl_ward";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
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
                    <td><select name=“sel_place” id="sel_place"required>
                            <option value="">---select----</option>
                        </select>
                    </td>
                </tr>
                <tr><td>User name</td>
                    <td><input type="text" name="txt_user" id="txt_user"required></td>
                </tr>
                <tr><td>Password</td>
                    <td><input type="password" name="txt_password" id="txt_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
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
                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?wid=" + wid,
                                    success: function(result) {
                                        $("#sel_place").html(result);
                                    }
                                });
                            }
        </script>
        </div>
    </body>
     <%@include file="Foot.jsp" %>
</html>
