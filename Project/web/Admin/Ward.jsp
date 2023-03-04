<%--
    Document   : Ward
    Created on : Sep 18, 2021, 3:18:37 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ward</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>
    <%
        String editId = "", editPop = "", editHouse = "", editWard = "", lblMsg = "";
        if (request.getParameter("btn_save") != null) {

            if (request.getParameter("txt_id") != "") {
                String up = "update tbl_ward set ward_no='" + request.getParameter("txt_ward") + "',ward_population='" + request.getParameter("txt_pop") + "',ward_houses='" + request.getParameter("txt_house") + "' where ward_id = '" + request.getParameter("txt_id") + "'";
                con.executeCommand(up);
            } else {
                String sel1 = "select * from tbl_ward where ward_no='" + request.getParameter("txt_ward") + "'";
                ResultSet res1 = con.selectCommand(sel1);
                System.out.println(sel1);
                if (!res1.next()) {
                    String ins = "insert into tbl_ward(ward_no,ward_population,ward_houses)values('" + request.getParameter("txt_ward") + "','" + request.getParameter("txt_pop") + "','" + request.getParameter("txt_house") + "')";
                    con.executeCommand(ins);
                    response.sendRedirect("Ward.jsp");
                } else {
                    lblMsg = "Data Already Exist";
                }
            }
        }
        if (request.getParameter("delid") != null) {
            String del = "delete from tbl_ward where ward_id='" + request.getParameter("delid") + "'";
            con.executeCommand(del);
        }
        if (request.getParameter("edid") != null) {
            String sel1 = "select * from tbl_ward where ward_id = '" + request.getParameter("edid") + "'";
            ResultSet rs1 = con.selectCommand(sel1);
            if (rs1.next()) {
                editId = rs1.getString("ward_id");
                editPop = rs1.getString("ward_population");
                editWard = rs1.getString("ward_no");
                editHouse = rs1.getString("ward_houses");

            }
        }
    %>
    <body>
        <section class="main_content dashboard_part">

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                                <!--Form-->
                                <div class="white_box_tittle list_header">
                                    <div class="col-lg-12">
                                        <div class="white_box mb_30">
                                            <div class="box_header ">
                                                <div class="main-title">
                                                    <h3 class="mb-0" >Table Ward</h3>
                                                </div>
                                            </div>

                                            <form method="post">
                                                <div class="form-group">
                                                    <label for="txt_ward">Ward No.</label>
                                                    <input required="" class="form-control" type="text" name="txt_ward" id="txt_ward"  value="<%=editWard%>"></td>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_pop">Population</label>
                                                    <input required="" class="form-control" type="text" name="txt_pop" id="txt_pop"   value="<%=editPop%>"></td>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_house">No.of. houses</label>
                                                    <input required="" class="form-control" type="text" name="txt_house" id="txt_house" value="<%=editHouse%>">
                                                    <input type="hidden" name="txt_id" value="<%=editId%>" id="txt_id">
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" style="width:100px; border-radius: 10px 5px " name="btn_save" value="Save">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">S1.no</td>
                                                <td align="center" scope="col">Ward No</td>
                                                <td align="center" scope="col">Population</td>
                                                <td align="center" scope="col">No.of Houses</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                String sel = "select * from tbl_ward";
                                                int i = 0;
                                                ResultSet rs = con.selectCommand(sel);
                                                while (rs.next()) {
                                                    i++;


                                            %>
                                            <tr>
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("ward_no")%></td>
                                                <td align="center"><%=rs.getString("ward_population")%></td>
                                                <td align="center"><%=rs.getString("ward_houses")%></td>
                                                <td>
                                                    <a href="Ward.jsp?delid=<%=rs.getString("ward_id")%>"class="status_btn">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="Ward.jsp?edid=<%=rs.getString("ward_id")%>"class="status_btn">Edit</a>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </body>
    <%@include file="Foot.jsp" %>
</html>