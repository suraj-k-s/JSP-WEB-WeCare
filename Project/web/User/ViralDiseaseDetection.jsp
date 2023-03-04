
<%--
    Document   : ViralDiseaseDetection
    Created on : Oct 23, 2021, 10:51:47 AM
    Author     : user
--%>

<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Arrays" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
     <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Symptoms Registration</title>
    </head>
    <body>
<div id="tab" align="center">
        <form method="post">
            <table border="1" align="center">
                <tr>
                    <td>Caption</td>
                    <td><textarea name="txt_caption" required></textarea></td>
                </tr>
                <tr>
                    <td>Name of Family Member</td>
                    <td>
                        <select name="member" id="sel_member" required>

                            <option>--select--</option>
                            <%
                                String sell = "select * from tbl_familymembers fm inner join tbl_family f on fm.family_id=f.family_id where fm.family_id='" + session.getAttribute("uid") + "'";
                                ResultSet rs1 = con.selectCommand(sell);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("member_id")%>"><%=rs1.getString("member_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Symptoms</td>
                    <td>
                        <%
                            int i = 0;
                            String selQry = "select * from tbl_symptoms";
                            ResultSet rs = con.selectCommand(selQry);
                            while (rs.next()) {
                                i++;
                        %>
                        <br>
                        <input type="checkbox" name="chk_symp_<%=i%>" value="<%=rs.getString("symp_id")%>"><%=rs.getString("symp_name")%>

                        <%
                            }

                        %>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_save" id="btn_save" value="Save">
                        <input type="reset" name="cancel" id="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

<%    if (request.getParameter("btn_save") != null) {
        String ins = "insert into tbl_viraldiseasereport(member_id,vdd_caption,vdr_date)values('" + request.getParameter("member") + "','" + request.getParameter("txt_caption") + "',curdate())";
        con.executeCommand(ins);
        String sel0 = "select max(vdr_id) as id from tbl_viraldiseasereport";
        ResultSet rsd = con.selectCommand(sel0);
        rsd.next();
        String id = rsd.getString("id");
        String sym = "";
        for (int j = 0; j < i; j++) {
            if (request.getParameter("chk_symp_" + j) != null) {
                String inQry = "insert into tbl_viraldiseasesymptoms(vdr_id,symp_id)values('" + id + "','" + request.getParameter("chk_symp_" + j) + "')";
                con.executeCommand(inQry);
                if (sym.equals("")) {
                    sym = sym + request.getParameter("chk_symp_" + j);
                } else {
                    sym = sym + "," + request.getParameter("chk_symp_" + j);
                }

            }
        }
        String VD = "";
        String selVD = "select DISTINCT(vd.vd_id) from tbl_viraldisease vd inner join tbl_viralsymptoms vs on vs.vd_id=vd.vd_id where vs.symp_id IN(" + sym + ")";
        ResultSet rsVD = con.selectCommand(selVD);
        while(rsVD.next())
        {
            if (VD.equals("")) {
                    VD = VD + rsVD.getString("vd_id");
                } else {
                    VD = VD + "," + rsVD.getString("vd_id");
                }
        }
        String upQry = "update tbl_viraldiseasereport set vd_id='"+VD+"' where vdr_id='"+id+"'";
        con.executeCommand(upQry);
    }


%>
</form>
</div>
</body>
<%@include file="Foot.jsp" %>
</html>


