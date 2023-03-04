<%-- 
    Document   : DoctorView
    Created on : Dec 4, 2021, 10:42:18 AM
    Author     : new
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
    </head>
    <%
    if(request.getParameter("btn_save")!="")  
    {
        String fdate = request.getParameter("txt_fdate");
        String tdate = request.getParameter("txt_tdate");
        String count = request.getParameter("txt_count");
        String id = request.getParameter("txt_id");
        
        String ins = "insert into tbl_viraldiseasereportrslt(vdr_id,vdrprsl_status,vdrprsl_fdate,vdrprsl_tdate,vdrprsl_duration)values('"+id+"','1','"+fdate+"','"+tdate+"','"+count+"')";
        if(con.executeCommand(ins))
        {
            response.sendRedirect("DoctorView.jsp");
        }



    }
    %>
    <body>
        <div id="tab" align="center">
            <form method="post">
                <h1>Report</h1>
                <input type="hidden" name="txt_id" value="<%=request.getParameter("id")%>">
                <table border="1" align="center" id="table-id" cellpadding="10">
                    <tr>
                        <td>From Date</td>
                        <td><input type="date" name="txt_fdate"></td>
                    </tr>
                    <tr>
                        <td>To Date</td>
                        <td><input type="date" name="txt_tdate"></td>
                    </tr>
                    <tr>
                        <td>Duration</td>
                        <td><input type="number" name="txt_count"></td>
                    </tr>
                     <tr>
                         <td colspan="2" align="center">
                             <input type="submit" name="btn_save" value="Submit">
                         </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
