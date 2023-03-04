<%-- 
    Document   : DiagnoseResult
    Created on : Dec 18, 2021, 2:20:47 PM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="tab" align="center">
            <form>
                <table border="1" align="center" id="table-id" cellpadding="10">
                    <caption>RESULT VIEW</caption>


                    <tr>
                        <th>S1.no</th>
                        <th>Name</th>
                       <th>Symptoms</th>
                        <th>Result</th>
                        <th>Date</th>
                        <th>From Date</th>
                        <th>To Date</th>
                    </tr>
                         <%
                        String sell = "select * from tbl_viraldiseasereport v  inner join tbl_familymembers fm on fm.member_id=v.member_id inner join tbl_viraldisease vd on v.vd_id=vd.vd_id inner join tbl_viraldiseasereportrslt vrr on v.vdr_id=vrr.vdr_id";
                        int i = 0;
                        ResultSet rs2 = con.selectCommand(sell);
                        while (rs2.next()) {
                            i++;


                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=rs2.getString("member_name")%></td>
                        <td>
                            <%
                        int z=0;
                        String sel3="select * from tbl_viraldiseasesymptoms v inner join tbl_symptoms s on v.symp_id=s.symp_id where vdr_id='"+rs2.getString("vdr_id")+"'";
                        ResultSet rs3 = con.selectCommand(sel3);
                        while (rs3.next()) {
                            z++;
                            if(z==1)
                            {   
                                out.println(rs3.getString("symp_name"));
                            }
                            else
                                {   
                                out.println(","+rs3.getString("symp_name"));
                            }
                                
                            }
                        
                        
                        
                        
                        %>
                        
                        </td>
                        <td><%=rs2.getString("vd_name")%></td>
                        <td><%=rs2.getString("vdr_date")%></td>
                        <td><%=rs2.getString("vdrprsl_fdate")%></td>
                        <td><%=rs2.getString("vdrprsl_tdate")%></td>
                        <%
                        }
                    
                                %>
                        
                    
                    
                                </tr>
                </table>
    </body>
</html>
