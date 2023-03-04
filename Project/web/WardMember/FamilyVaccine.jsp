<%-- 
    Document   : FamilyVaccine.jsp
    Created on : Oct 9, 2021, 12:59:58 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine Details</title>
    </head>
    <body>
        <div id="tab" align="center">
            <form>
                <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Pandemic Name</th>
                <th>Vaccine Name</th>
                <th>Member Name</th>
                <th>Date of vaccine</th>
                <th>Dose </th>
                <th>Vaccine Proof</th>
                
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_vaccinemember vm inner join tbl_pandemic p on p.pandemic_id=vm.pandemic_id inner join tbl_vaccine v on v.vaccine_id=vm.vaccine_id inner join tbl_familymembers fm on fm.member_id=vm.member_id where vm.member_id='"+request.getParameter("mid")+"' ";
                ResultSet rs = con.selectCommand(sel);
                System.out.println(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("pandemic_name")%></td>
                 <td><%=rs.getString("vaccine_name")%></td>
                 <td><%=rs.getString("member_name")%></td>
                <td><%=rs.getString("vm_takendate")%></td>
                <td><%=rs.getString("vaccine_dose")%></td>
                <td><img src="../Assets/Files/VaccineProof/<%=rs.getString("vaccine_proof")%>" width="120" height="120"></td>
                
                
            </tr>
            <%
                }
            %>
        </table>
        </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>

