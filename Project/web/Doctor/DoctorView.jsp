<%-- 
    Document   : DoctorView
    Created on : Dec 4, 2021, 10:42:18 AM
    Author     : new
--%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOCTOR VIEW</title>
    </head>
    <%
        if (request.getParameter("vdid") != "" && request.getParameter("vdrid") != "") {

            Random r = new Random();
            int r_num = r.nextInt(1111) + 999;
            String slip = "slip_" + r_num;

            String up = "update tbl_viraldiseasereport set slip_id='" + slip + "',vdr_ispandemic='1',vd_id='" + request.getParameter("vdid") + "' where vdr_id='" + request.getParameter("vdrid") + "'";
            con.executeCommand(up);
        }
        
    %>
    <body>
        <div id="tab" align="center">
            <form>
                <h1>DOCTOR VIEW</h1>
                <table border="1" align="center" id="table-id" cellpadding="10">
                    


                    <tr>
                        <th>S1.no</th>
                        <th>Patient Name</th>
                        <th>Contact Number</th>
                        <th>Caption</th>
                        <th>Symptoms</th>
                        <th>Date</th>
                        <th colspan="2">Viral Disease</th>

                    </tr>
                    <%
                        String sell = "select * from tbl_viraldiseasereport v  inner join tbl_familymembers fm on fm.member_id=v.member_id ";
                        int i = 0;
                        ResultSet rs2 = con.selectCommand(sell);
                        while (rs2.next()) {
                            i++;


                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=rs2.getString("member_name")%></td>
                        <td><%=rs2.getString("member_contact")%></td>
                        <td><%=rs2.getString("vdd_caption")%></td>
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
                        <td><%=rs2.getString("vdr_date")%></td>
                        <td>
                            <%
                                String arr = rs2.getString("vd_id");
                                String[] a = new String[100];
                                a = arr.split(",");
                                int size = a.length;
                                if (a.length > 1) {
                                    for (int j = 0; j < size; j++) {
                                        String sel2 = "select * from tbl_viraldisease where vd_id='" + a[j] + "'";
                                        ResultSet rsZ = con.selectCommand(sel2);
                                        rsZ.next();
                                        if (j == 0) {
                            %>

                            <a href="DoctorView.jsp?vdid=<%=rsZ.getString("vd_id")%>&vdrid=<%=rs2.getString("vdr_id")%>"><%=rsZ.getString("vd_name")%></a>

                            <%
                            } else {
                            %>

                            ,<a href="DoctorView.jsp?vdid=<%=rsZ.getString("vd_id")%>&vdrid=<%=rs2.getString("vdr_id")%>"><%=rsZ.getString("vd_name")%></a>

                            <%
                            
                                if (j == size-1) {
                            %>
                            ,<a href="DoctorView.jsp?vdrid=<%=rs2.getString("vdr_id")%>&vdid=0">Negative</a>
                            <%
                                            }

                                        }
                                    }
                                } else {
                                    String sel2 = "select * from tbl_viraldisease where vd_id='" + a[0] + "'";
                                    ResultSet rsZ = con.selectCommand(sel2);
                                    if(rsZ.next())
                                    {
                                        String selSX = "select * from tbl_viraldiseasereportrslt where vdr_id='"+rs2.getString("vdr_id")+"'";
                                        ResultSet rdc = con.selectCommand(selSX);
                                        if(rdc.next())
                                        {
                                            out.println("Reported ->");
                                        out.println(rsZ.getString("vd_name"));
                                        }
                                        else
                                        {
                                        out.println("<a href='Report.jsp?id="+rs2.getString("vdr_id")+"'>Report</a> ->");
                                        out.println(rsZ.getString("vd_name"));
                                        }
                                    }
                                    else
                                    {
                                        out.println("Negative");
                                    }

                                }


                            %>

                        </td>
                        
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
