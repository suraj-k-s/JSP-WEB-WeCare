<%-- 
    Document   : MemberEditProfile
    Created on : Oct 14, 2021, 11:19:25 AM
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
        <title>Edit Profile</title>
    </head>
    <body>
         <div id="tab" align="center">
        <form method="POST" name="frmeditprofile">
            <%
                if(request.getParameter("btn_edit")!=null)
                {
                   
                    String up = "update tbl_familymembers set member_name = '"+request.getParameter("txt_name")+"'"
                            + ",member_contact='"+request.getParameter("txt_contact")+"'"
                            + ",member_jobstatus='"+request.getParameter("radio")+"'"
                            + ",member_email = '"+request.getParameter("txt_email")+"'"
                            + "where member_id='"+request.getParameter("fmid")+"'";
                    out.println(up);
                   
                    con.executeCommand(up);
                    response.sendRedirect("MemberProfile.jsp");
                   
                }
               
               
               
                String sel="select * from tbl_familymembers where member_id='"+request.getParameter("fmid")+"'";
                ResultSet rs=con.selectCommand(sel);
                String jobStatus="";
                if(rs.next())
                {
                   jobStatus=rs.getString("member_jobstatus").toString();
                   out.print(jobStatus);
               
                %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               
                <tr>  
                    <td>Name</td>
                    <td>
                        <input type="text" name="txt_name" value="<%=rs.getString("member_name")%>">
                    </td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <input type="radio" name="radio" id="radio1" value="Job" <%if(jobStatus.equals("Job")){%> checked  <%}%> required> Job
                        <input type="radio" name="radio" id="radio2" value="Student" <%if(jobStatus.equals("Student")){%> checked  <%}%> required>Student
                        <input type="radio" name="radio" id="radio3" value="Other" <%if(jobStatus.equals("Other")){%> checked <%}%> required >Other
                       
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" name="txt_contact" value="<%=rs.getString("member_contact")%>">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txt_email" value="<%=rs.getString("member_email")%>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit"name="btn_edit" id="btn_edit" value="Edit">
                       
                    </td>
                </tr>
            </table>
            <%
                }
                    %>
        </form>
         </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>


