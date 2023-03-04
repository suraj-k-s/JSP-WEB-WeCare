<%-- 
    Document   : ContainmentZoneView
    Created on : Dec 21, 2021, 12:31:05 PM
    Author     : user
--%>

<<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Containment Zones</title>
    </head>
    <body>
        <form>
            <table border="1" align="center" cellpadding="10">
                <caption>Containment Zone</caption>
                <tr>
                    <td>
                        <select name="sel_level" id="sel_level" >
                            <option value="">--select--</option>
                            <option value="Red">Red</option>
                            <option value="Orange">Orange</option>
                            <option value="Green">Green</option>
                            
                        </select>
                    </td>
                    <td>
                        <input type="submit" name="btn_submit" value="Search">
                    </td>
                </tr>
                
            </table>
            <br>
            <table border="1" align="center" id="table-id" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Ward</th>
                   
                    <th>Level</th>
                    <th>Date</th>

                </tr>
                <%
                    if(request.getParameter("btn_submit")!=null)
                    {
                        String sell = "select * from tbl_containmentzone c inner join tbl_ward w on w.ward_id=c.ward_id  where ribbon_name = '"+request.getParameter("sel_level")+"' order by w.ward_no";
                    int i = 0;
                    System.out.println(sell);
                    ResultSet rs2 = con.selectCommand(sell);
                    while (rs2.next()) {
                        i++;


                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs2.getString("ward_no")%></td>
                    
                    <td><%=rs2.getString("ribbon_name")%></td>
                    <td><%=rs2.getString("cntnmnt_date")%></td>

                </tr>
                <%
                    }
                    }
                %>

            </table>
        </form>
    </body>
</html>
