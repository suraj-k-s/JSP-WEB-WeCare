<%-- 
    Document   : Vaccine
    Created on : Nov 17, 2021, 2:57:39 PM
    Author     : PSST
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        if (request.getParameter("btn_save") != null) {

            String pandemic = request.getParameter("sel_pandemic");
            String vaccine = request.getParameter("sel_vaccine");
            String ward = request.getParameter("ward");
            String member = request.getParameter("member");
            String dose = request.getParameter("dose");
            String insQry = "insert into tbl_vaccinemember(pandemic_id,vaccine_id,ward_id,member_id,vaccine_dose)"
                    + "values('" + pandemic + "','" + vaccine + "','" + ward + "','" + member + "','" + dose + "')";
            if (con.executeCommand(insQry)) {
                out.println("<script>alert('Inserted')</script>");
            } else {
                out.println("<script>alert('Failed')</script>");
            }
        }
    %>
    <body>
        <div id="tab" align="center">
        <form id="form_id" method="post">
            <table border="1" width="452" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td width='120'>Pandemic Name</td>
                    <td>
                        <select name="sel_pandemic" id="sel_pandemic" onchange="getVaccine(this.value)">
                            <option value="">---select----</option>
                            <%
                                String sel = "select * from tbl_pandemic";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("pandemic_id")%>"><%=rs.getString("pandemic_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Vaccine Name</td>
                    <td>
                        <select name="sel_vaccine" id="sel_vaccine" required>
                            <option value="">---select----</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Ward Number</td>
                    <td>
                        <select name="ward">
                            <option value="">---select----</option>
                            <%
                                String sel2 = "select * from tbl_ward";
                                ResultSet rs3 = con.selectCommand(sel2);
                                while (rs3.next()) {
                            %>
                            <option value="<%=rs3.getString("ward_id")%>"><%=rs3.getString("ward_no")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr><td>Member Name</td>
                    <td>
                        <select name="member" id="sel_member">
                            <option value="">---select----</option>
                            <%
                                String sell = "select * from tbl_familymembers where family_id='" + session.getAttribute("uid") + "'";
                                ResultSet rs2 = con.selectCommand(sell);
                                while (rs2.next()) {
                            %>
                            <option value="<%=rs2.getString("member_id")%>"><%=rs2.getString("member_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Vaccine Dose</td>
                    <td>
                        <select name="dose" id="dose" onchange="getChange(this.value)">
                            <option value="">---select----</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">Vaccinated</option>

                        </select>
                    </td>
                </tr>
                <tr id="date" style="display:  none">
                    <td>Taken Date</td>
                    <td><input type="date" name="date" id="date">(Last vaccinated date)</td>
                </tr>
                <tr id="cert" style="
                    display:  none">
                    <td>Vaccinated Proof</td>
                    <td><input type="file" name="file_proof" id="file"></td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_save" value="Save">
                        <input type="reset" name="btn_cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
        <script src="../Assets/Jq/jquery.js"></script>
        <script>
                          function getVaccine(pid)
                          {

                              $.ajax({
                                  url: "../Assets/AjaxPages/AjaxVaccine.jsp?pid=" + pid,
                                  success: function(result) {
                                      $("#sel_vaccine").html(result);
                                  }
                              });
                          }
                           function getChange(pid)
                            {


                                if (pid == "1")
                                {
                                    document.getElementById("date").style.display = 'none';
                                    document.getElementById("cert").style.display = 'none';
                                    document.getElementById("form_id").action = '';
                                    document.getElementById("form_id").enctype = '';

                                }
                                else if (pid == "2")
                                {
                                    document.getElementById("date").style.display = '';
                                    document.getElementById("cert").style.display = '';
                                    document.getElementById("form_id").action = '../Assets/UploadAction/VaccineProofUploadAction.jsp';
                                    document.getElementById("form_id").enctype = 'multipart/form-data';
                                }
                                else if (pid == "3")
                                {
                                    document.getElementById("date").style.display = '';
                                    document.getElementById("cert").style.display = '';
                                    document.getElementById("form_id").action = 'multipart/form-data';
                                }

                            }
                           
        </script>
    </form>
    </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
