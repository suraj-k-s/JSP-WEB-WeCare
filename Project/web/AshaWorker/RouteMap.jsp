<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        if (request.getParameter("btn_submit") != "") {
            String place_id = request.getParameter("sel_place");
            String place_name = request.getParameter("txt_name");
            String date = request.getParameter("txt_date");
            String time = request.getParameter("txt_time");
            String id = request.getParameter("txt_id");

            String ins = "insert into tbl_routemapmaster(vdrprsl_id,created_by,rutempmstr_isactive)values('" + id + "','" + session.getAttribute("awname") + "','1')";
            if (con.executeCommand(ins)) {
                String sel = "select Max(rutempmstr_id) as id from tbl_routemapmaster";
                ResultSet rs = con.selectCommand(sel);
                if (rs.next()) {
                    String insQry = "insert into tbl_route(place_name,wp_id,route_date,route_time,aw_id,rutempmstr_id)"
                            + "values('" + place_name + "','" + place_id + "','" + date + "','" + time + "','" + session.getAttribute("awid") + "','" + rs.getString("id") + "')";
                    if (con.executeCommand(insQry)) {
                        response.sendRedirect("RouteMap.jsp?id=" + request.getParameter("txt_id"));
                    }
                    out.println(insQry);
                }
            }

        }
    %>
    <body>
        <div id="tab" align="center">
            <form method="post">
                <input type="hidden" name="txt_id" value="<%=request.getParameter("id")%>" >
                <table border="1">
                    <tr>
                        <td>Ward</td>
                        <td>
                            <select name=“sel_ward” id="sel_ward" onchange="getPlace(this.value)"required>
                                <option>---select----</option>
                                <%
                                    String sel = "select * from tbl_ward";
                                    ResultSet rs = con.selectCommand(sel);
                                    while (rs.next()) {
                                %>
                                <option value="<%=rs.getString("ward_id")%>"><%=rs.getString("ward_no")%></option>
                                <%
                                    }
                                %>

                            </select>

                        </td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td>
                            <select name="sel_place" id="sel_place" required>
                                <option>---select----</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Place Name</td>
                        <td>
                            <input type="text" name="txt_name" >
                        </td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td>
                            <input type="date" name="txt_date" >
                        </td>
                    </tr>
                    <tr>
                        <td>Time</td>
                        <td>
                            <input type="time" name="txt_time" >
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Submit" name="btn_submit">
                        </td>
                    </tr

                </table>

            </form>
            <table border="1">
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
        </div>
        <script src="../Assets/Jq/jquery.js"></script>
        <script>
                                function getPlace(wid)
                                {

                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxPlace.jsp?wid=" + wid,
                                        success: function(result) {
                                            $("#sel_place").html(result);
                                        }
                                    });
                                }
        </script>
    </body>
</html>