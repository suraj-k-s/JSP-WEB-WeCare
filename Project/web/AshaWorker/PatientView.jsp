<%-- 
    Document   : PatientView
    Created on : Dec 19, 2021, 11:07:12 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients</title>
    </head>
    <body>
        <div id="tab" align="center">
            <form>
                <table border="1" align="center" id="table-id" cellpadding="10">
                    <caption>PATIENT DETAILS</caption>
                    <tr>
                        <th>S1.no</th>
                        <th>Family Name</th>
                        <th>Patient Name</th>
                        <th>Contact Number</th>
                        <th>Disease</th>
                        <th>Date</th>
                        <th>Action</th>
                            <%
                                String sell = "select * from tbl_viraldiseasereport v inner join tbl_viraldiseasereportrslt vdrr on vdrr.vdr_id=v.vdr_id inner join tbl_familymembers fm on fm.member_id=v.member_id inner join tbl_family f on f.family_id=fm.family_id inner join tbl_viraldisease vd on v.vd_id=vd.vd_id where f.ward_id='" + session.getAttribute("awid") + "'";
                               
                                int i = 0;
                                ResultSet rs2 = con.selectCommand(sell);
                                while (rs2.next()) {
                                    i++;
                            %>
                    </tr>
                    <tr>
                        <td><%=i%></td>
                        <td><%=rs2.getString("family_hname")%></td>
                        <td><%=rs2.getString("member_name")%></td>
                        <td><%=rs2.getString("member_contact")%></td>
                        <td><%=rs2.getString("vd_name")%></td>
                        <td><%=rs2.getString("vdr_date")%></td>
                        <td><a href="RouteMap.jsp?id=<%=rs2.getString("vdrprsl_id")%>">Route Map</a></td>
                    </tr>

                    <%
                        }
                    %>
                </table>
            </form>
        </div>
                </body>
                </html>
