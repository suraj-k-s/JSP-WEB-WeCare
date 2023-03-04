<%-- 
    Document   : RouteMap
    Created on : Dec 21, 2021, 1:12:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Route map</title>
    </head>
    <body>
        <table border="1" align="center">
                <tr>
                    <td>Sl.No</td>
                    <td>Ward Number</td>
                    <td>Place</td>
                    <td>Visited Place</td>
                    <td>Date</td>
                    <td>Time</td>
                </tr> 
                <%
                    String sell = "select * from tbl_route r inner join tbl_routemapmaster rmm on rmm.rutempmstr_id=r.rutempmstr_id inner join tbl_wardplaces wp on wp.wp_id=r.wp_id inner join tbl_ward wr on wr.ward_id=wp.ward_id where vdrprsl_id = '" + request.getParameter("id") + "'";
                    int i = 0;
                    
                    ResultSet rs2 = con.selectCommand(sell);
                    while (rs2.next()) {
                        i++;


                %>

                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("ward_id")%></td>
                    <td><%=rs2.getString("wp_name")%></td>
                    <td><%=rs2.getString("place_name")%></td>
                    <td><%=rs2.getString("route_date")%></td>
                    <td><%=rs2.getString("route_time")%></td>
                </tr>
                <%
                    }
                %>
            </table>
    </body>
</html>
