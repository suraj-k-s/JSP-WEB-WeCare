<%-- 
    Document   : Symptoms
    Created on : Sep 19, 2021, 12:18:18 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viral Disease Symptoms</title>
    </head>
    <%
        if (request.getParameter("btn_save") != null) {

            String vId = request.getParameter("viral");
            String sId = request.getParameter("symptoms");

            

           String ins = "insert into tbl_viralsymptoms(vd_id,symp_id)values('" + vId + "','" + sId+ "')";
           con.executeCommand(ins);
                response.sendRedirect("ViralSymptoms.jsp");
            } 
            


    %>
    <body>
        <%             if (request.getParameter("delid") != null) {
                String del = "delete from tbl_viralsymptoms where vs_id='" + request.getParameter("delid") + "'";
                con.executeCommand(del);
            }
        %>
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Viral disease</td>
                    <td>
                        <select name="viral" id="viral" required>
                            <option>---select----</option>
                            <%
                                String sel = "select * from tbl_viraldisease";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("vd_id")%>"><%=rs.getString("vd_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Symptoms</td>
                    <td>
                        <select name="symptoms" id="symptoms" required>
                            <option>---select----</option>
                            <%
                                String sell = "select * from tbl_symptoms";
                                ResultSet rs1 = con.selectCommand(sell);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("symp_id")%>"><%=rs1.getString("symp_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>

                <tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_save" id="btn_save" value="Save">
                        <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel">
                    </td>
                </tr>

            </table>
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <th>Sl No</th>
                    <th>Viral Disease</th>
                    <th>Symptoms</th>
                    <th>Action</th>
                </tr>
                <%
                    int i = 0;
                    String sel1 = "select * from tbl_viralsymptoms v inner join tbl_viraldisease vd on v.vd_id=vd.vd_id inner join tbl_symptoms s on v.symp_id=s.symp_id ";
                    ResultSet rs2 = con.selectCommand(sel1);
                    while (rs2.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("vd_name")%></td>
                    <td><%=rs2.getString("symp_name")%></td>
                    <td>
                        <a href="ViralSymptoms.jsp?delid=<%=rs2.getString("vs_id")%>">Delete</a>
                    </td>
                </tr>

                <%
                    }


                %>
            </table>
        </form>
    </body>
</html>
