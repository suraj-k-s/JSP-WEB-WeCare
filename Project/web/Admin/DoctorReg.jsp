<%-- 
  Document   : DoctorReg.jsp
  Created on : Sep 20, 2021, 6:44:09 PM
  Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Registration</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <section class="main_content dashboard_part">
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                                <div class="white_box_tittle list_header">
                                    <div class="col-lg-12">
                                        <div class="white_box mb_30">
                                            <div class="box_header ">
                                                <div class="main-title">
                                                    <h3 class="mb-0" >Doctor Registration</h3>
                                                </div>
                                            </div>
                                            <form method="post" name="frmdocreg" enctype="multipart/form-data" action="../Assets/UploadAction/DoctorUploadAction.jsp">
                                                <div class="form-group">
                                                    <label for="txt_name">Name</label>
                                                    <input type="text" name="txt_name" id="txt_name" pattern="[A-Za-z ]*$"  required class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_address">Address</label>
                                                    <textarea id="txt_address" class="form-control" name="txt_address" rows="3" cols="20" required></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_gender">Gender</label>
                                                    <div style="border: 1px solid #f3d8d2;padding: 20px;border-radius: 4px;">
                                                        <input type="radio" name="gender" id="gender1" value="Male">Male
                                                        <input type="radio" name="gender" id="gender2" value="Female" required>Female
                                                        <input type="radio" name="gender" id="gender3" value="Others">Others
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_contact1">Contact 1</label>
                                                    <input type="text" name="txt_contact1" id="txt_contact1" class="form-control" pattern="^[7-9][0-9]{9}$" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_email">Email</label>
                                                    <input type="email" class="form-control" name="txt_email" id="txt_email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="file_proof1">Photo</label>
                                                    <input type="file" name="file_proof1" class="form-control" id="file_proof1" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_adhar">Aadhar No</label>
                                                    <input type="text" class="form-control" name="txt_adhar" id="txt_adhar" pattern="^[1-9][0-9]{11}$" required placeholder="Enter 12 digit adhar no">
                                                </div>
                                                <div class="form-group">
                                                    <label for="file_proof2">Eligibility Certificate</label>
                                                    <input type="file" class="form-control" name="file_proof2" id="file_proof2" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_uname">User Name</label>
                                                    <input type="text" class="form-control" name="txt_uname" id="txt_uname" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_pswd">Password</label>
                                                    <input type="password" class="form-control" name="txt_pswd" id="txt_pswd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_confirmpswd">Confirm-Password</label>
                                                    <input type="password" class="form-control" name="txt_confirmpswd" id="txt_confirmpswd" required>
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" name="btn_save" style="width:100px; border-radius: 10px 5px " value="Save">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </body>
</html>

