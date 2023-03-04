<%-- 
    Document   : WardPlaces
    Created on : May 5, 2021, 2:10:22 PM
    Author     : Pro-TECH
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WardPlaces</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>

    <%        String id = "", name = "", dis = "";

        if (request.getParameter("edit") != null) {

            id = request.getParameter("edit");
            name = request.getParameter("name");
            dis = request.getParameter("id");

        }

        if (request.getParameter("btn_save") != null) {

            if (request.getParameter("hid").equals("")) {
                String insQry = "insert into tbl_wardplaces(ward_id,wp_name)values('" + request.getParameter("sel_ward") + "','" + request.getParameter("txt_place") + "')";
                con.executeCommand(insQry);
                response.sendRedirect("WardPlaces.jsp");
            } else {
                String upQry = "update tbl_wardplaces set ward_id='" + request.getParameter("sel_ward") + "',wp_name='" + request.getParameter("txt_place") + "' where wp_id='" + request.getParameter("hid") + "'";
                con.executeCommand(upQry);
                response.sendRedirect("WardPlaces.jsp");
            }
        }

        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_wardplaces where wp_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("WardPlaces.jsp");
        }


    %>
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
                                                    <h3 class="mb-0" >Table Ward Places</h3>
                                                </div>
                                            </div>
                                            <form>
                                                <div class="form-group">
                                                    <label for="sel_ward">Select Ward</label>
                                                    <select required="" class="form-control" name="sel_ward" id="sel_ward">
                                                        <option value="" >Select</option>
                                                        <%                                                            String disQry = "select * from tbl_ward";
                                                            ResultSet rs1 = con.selectCommand(disQry);
                                                            while (rs1.next()) {
                                                        %>
                                                        <option value="<%=rs1.getString("ward_id")%>" <%if (dis.equals(rs1.getString("ward_id"))) {
                                                                out.println("selected");
                                                            }%>><%=rs1.getString("ward_no")%></option>
                                                        <%
                                                            }

                                                        %>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_place">WardPlaces Name</label>
                                                    <input required="" type="text" class="form-control" value="<%=name%>" id="txt_place" name="txt_place">
                                                    <input type="hidden" name="hid" value="<%=id%>">
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" name="btn_save" style="width:100px; border-radius: 10px 5px " value="Save">
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
                                                <td align="center" scope="col">Ward</td>
                                                <td align="center" scope="col">WardPlaces</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_wardplaces p inner join tbl_ward d on d.ward_id=p.ward_id";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;

                                            %>
                                            <tr>    
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("ward_no")%></td>
                                                <td align="center"><%=rs.getString("wp_name")%></td>
                                                <td align="center"> 
                                                    <a href="WardPlaces.jsp?del=<%=rs.getString("wp_id")%>" class="status_btn">Delete</a> &nbsp;&nbsp;&nbsp;&nbsp; 
                                                    <a class="status_btn" href="WardPlaces.jsp?edit=<%=rs.getString("wp_id")%>&name=<%=rs.getString("wp_name")%>&id=<%=rs.getString("ward_id")%>">Edit</a>
                                                </td> 
                                            </tr>
                                            <%                      }


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
