<%-- 
    Document   : Pandemic.jsp
    Created on : Sep 18, 2021, 9:57:48 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pandemic</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>
    <%        
    String editId = "", editPandemic = "", editDesc = "";
        if (request.getParameter("btn_save") != null) {
            if (request.getParameter("txt_id") != "") {
                String up = "update tbl_pandemic set pandemic_name='" + request.getParameter("txt_name") + "',pandemic_desc='" + request.getParameter("txt_desc") + "'";
                con.executeCommand(up);
            } else {
                String sel1 = "select * from tbl_pandemic where pandemic_name='" + request.getParameter("txt_name") + "' or pandemic_desc='" + request.getParameter("txt_desc") + "'";
                ResultSet res1 = con.selectCommand(sel1);
                System.out.println(sel1);
                if (!res1.next()) {
                    String ins = "insert into tbl_pandemic(pandemic_name,pandemic_desc)values('" + request.getParameter("txt_name") + "','" + request.getParameter("txt_desc") + "')";
                    con.executeCommand(ins);
                    response.sendRedirect("Pandemic.jsp");
                } else {

                    out.println("<script>alert('Already Exists!!')</script");

                }

            }
        }
        if (request.getParameter("delid") != null) {
            String del = "delete from tbl_pandemic where pandemic_id='" + request.getParameter("delid") + "'";
            con.executeCommand(del);
        }
        if (request.getParameter("edid") != null) {
            String sel1 = "select * from tbl_pandemic where pandemic_id = '" + request.getParameter("edid") + "'";
            ResultSet rs1 = con.selectCommand(sel1);
            if (rs1.next()) {
                editId = rs1.getString("pandemic_id");
                editPandemic = rs1.getString("pandemic_name");
                editDesc = rs1.getString("pandemic_desc");

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
                                                    <h3 class="mb-0" >Table Pandemic</h3>
                                                </div>
                                            </div>

                                            <form method="POST" name="Form1">
                                                <div class="form-group">
                                                    <label for="txt_name">Name</label>
                                                    <input required="" class="form-control" type="text" name="txt_name" id="txt_name" value="<%=editPandemic%>"></td>
                                                     <input type="hidden" name="txt_id" value="<%=editId%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_desc">Description</label>
                                                    <input required="" class="form-control" type="text" name="txt_desc" id="txt_desc"   value="<%=editDesc%>"></td>
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
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Name</td>
                                                <td align="center" scope="col">Description</td>

                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                String sel = "select * from tbl_pandemic";
                                                int i = 0;
                                                ResultSet rs = con.selectCommand(sel);
                                                while (rs.next()) {
                                                    i++;


                                            %>
                                            <tr>
                                                <td><%=i%></td>
                                                <td><%=rs.getString("pandemic_name")%></td>
                                                <td><%=rs.getString("pandemic_desc")%></td>

                                                <td>
                                                    <a href="Pandemic.jsp?delid=<%=rs.getString("pandemic_id")%>"class="status_btn">Delete</a>
                                                    <a href="Pandemic.jsp?edid=<%=rs.getString("pandemic_id")%>"class="status_btn">Edit</a>
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