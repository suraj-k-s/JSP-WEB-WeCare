
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>


<%
    String ward = request.getParameter("wid");
    String level = request.getParameter("lid");
    
  
    if (level!=null && ward==null) {
        
        %>
        
        <table border="1" align="center" id="table-id" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Ward</th>
                    <th>Place</th>
                    <th>Level</th>
                    <th>Date</th>

                </tr>
                <%
                    String sell = "select * from tbl_containmentzone c inner join tbl_wardplaces p on p.wp_id=c.wp_id inner join tbl_ward w on w.ward_id=p.ward_id inner join tbl_ribbon r on r.ribbon_id=c.ribbon_id where r.ribbon_id='"+level+"' order by w.ward_no";
                    int i = 0;
                    ResultSet rs2 = con.selectCommand(sell);
                    while (rs2.next()) {
                        i++;


                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("ward_no")%></td>
                    <td><%=rs2.getString("wp_name")%></td>
                    <td><%=rs2.getString("ribbon_color")%></td>
                    <td><%=rs2.getString("cntnmnt_date")%></td>

                </tr>
                <%
                    }
                %>

            </table>
        <%

    } else if (level==null && ward!=null) {
        
        %>
        
        <table border="1" align="center" id="table-id" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Ward</th>
                    <th>Place</th>
                    <th>Level</th>
                    <th>Date</th>

                </tr>
                <%
                    String sell = "select * from tbl_containmentzone c inner join tbl_wardplaces p on p.wp_id=c.wp_id inner join tbl_ward w on w.ward_id=p.ward_id inner join tbl_ribbon r on r.ribbon_id=c.ribbon_id where w.ward_id='"+ward+"' order by w.ward_no";
                    int i = 0;
                    ResultSet rs2 = con.selectCommand(sell);
                    while (rs2.next()) {
                        i++;


                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("ward_no")%></td>
                    <td><%=rs2.getString("wp_name")%></td>
                    <td><%=rs2.getString("ribbon_color")%></td>
                    <td><%=rs2.getString("cntnmnt_date")%></td>

                </tr>
                <%
                    }
                %>

            </table>
        <%
        

    } else if (level!=null && ward!=null) {

        %>
        
        <table border="1" align="center" id="table-id" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Ward</th>
                    <th>Place</th>
                    <th>Level</th>
                    <th>Date</th>

                </tr>
                <%
                    String sell = "select * from tbl_containmentzone c inner join tbl_wardplaces p on p.wp_id=c.wp_id inner join tbl_ward w on w.ward_id=p.ward_id inner join tbl_ribbon r on r.ribbon_id=c.ribbon_id where r.ribbon_id='"+level+"' and w.ward_id='"+ward+"' order by w.ward_no";
                    int i = 0;
                    ResultSet rs2 = con.selectCommand(sell);
                    while (rs2.next()) {
                        i++;


                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("ward_no")%></td>
                    <td><%=rs2.getString("wp_name")%></td>
                    <td><%=rs2.getString("ribbon_color")%></td>
                    <td><%=rs2.getString("cntnmnt_date")%></td>

                </tr>
                <%
                    }
                %>

            </table>
        <%

    }


%>

