<%-- 
    Document   : Ribbon.jsp
    Created on : Sep 21, 2021, 10:46:32 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ribbon</title>
    </head>
    <body>
        <%
            String editId = "", editName = "", editDesc = "";

            if (request.getParameter("btn_save") != null) {
                if (request.getParameter("txt_id") != "") {
                    String up = "update tbl_ribbon set ribbon_color='" + request.getParameter("txt_name") + "',ribbon_desc='" + request.getParameter("txt_desc") + "' where ribbon_id = '" + request.getParameter("txt_id") + "'";
                    con.executeCommand(up);
                } else {
                    String sel1 = "select * from tbl_ribbon where ribbon_color='" + request.getParameter("txt_name") + "' or ribbon_desc='" + request.getParameter("txt_desc") + "'";
                    ResultSet res1 = con.selectCommand(sel1);
                    System.out.println(sel1);
                    if (!res1.next()) {
                        String ins = "insert into tbl_ribbon(ribbon_color,ribbon_desc)values('" + request.getParameter("txt_name") + "','" + request.getParameter("txt_desc") + "')";
                        con.executeCommand(ins);
                        response.sendRedirect("ribbon.jsp");
                    } else {

                        out.println("<script>alert('Already Exists!!')</script");

                    }

                }
            }
            if (request.getParameter("delid") != null) {
                String del = "delete from tbl_ribbon where ribbon_id='" + request.getParameter("delid") + "'";
                con.executeCommand(del);
            }
            if (request.getParameter("edid") != null) {
                String sell = "select * from tbl_ribbon where ribbon_id='" + request.getParameter("edid") + "'";
                ResultSet rsl = con.selectCommand(sell);
                if (rsl.next()) {
                    editId = rsl.getString("ribbon_id");
                    editName = rsl.getString("ribbon_color");
                    editDesc = rsl.getString("ribbon_desc");

                }
            }


        %>
        <form method="post" name="form2">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr><td>Ribbon Color</td>
                    <td>
                        <input type="text" name="txt_name" id="txt_name" value="<%=editName%>" pattern="[A-Za-z]*$"required>
                        <input type="hidden" name="txt_id" value="<%=editId%>" id="txt_id" >
                    </td>
                </tr>
                <tr><td>Ribbon description</td>
                    <td><textarea id="txt_desc" name="txt_desc" rows="5" cols="50" required><%=editDesc%></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_save" id="btn_save" value="Save"><input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Ribbon Name</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
                <%
                    String sel = "select * from tbl_ribbon";
                    int i = 0;
                    ResultSet rs = con.selectCommand(sel);
                    while (rs.next()) {
                        i++;


                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("ribbon_color")%></td>
                    <td><%=rs.getString("ribbon_desc")%></td>
                    <td><a href="ribbon.jsp?delid=<%=rs.getString("ribbon_id")%>">Delete</a>
                        <a href="ribbon.jsp?edid=<%=rs.getString("ribbon_id")%>">Edit</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
        </form>
    </body>
</html>

