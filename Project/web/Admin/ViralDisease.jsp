<%-- 
    Document   : ViralDisease.jsp
    Created on : Sep 18, 2021, 10:13:02 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viral Disease</title>
    </head>
    <body>
        
        <% 
            String editId= "", editName= "";
            if(request.getParameter("btn_save")!=null)
            {
                if(request.getParameter("txt_id")!="")
                {
                    String up="update tbl_viraldisease set vd_name='"+request.getParameter("txt_vname")+"' where vd_id = '"+request.getParameter("txt_id")+"'";
                    con.executeCommand(up);
                    response.sendRedirect("ViralDisease.jsp");
                }
                else
                {
                    String ins="insert into tbl_viraldisease(vd_name)values('"+request.getParameter("txt_vname")+"')";
                    con.executeCommand(ins);
                    response.sendRedirect("ViralDisease.jsp");
                }
            }
            if(request.getParameter("delid")!=null)
            {
                String del="delete from tbl_viraldisease where vd_id='"+request.getParameter("delid")+"'";
                con.executeCommand(del);
            }
            if(request.getParameter("edid")!=null)
            {
                String sel1 = "select * from tbl_viraldisease where vd_id = '"+request.getParameter("edid")+"'";
                ResultSet rs1= con.selectCommand(sel1);
                if(rs1.next())
                {
                    editId = rs1.getString("vd_id");
                    editName= rs1.getString("vd_name");
                    
                }
            }
        %>
        <br>
       <form method="POST" name="Form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Viral Disease Name</td>
                    <td>
                        <input type="text" name="txt_vname" id="txt_vname" pattern="[A-Za-z ]*$" required value="<%=editName%>">
                        <input type="hidden" name="txt_id" required value="<%=editId%>" id="txt_id">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_save" id="btn_save" value="Save">
                        <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel">
                    </td>
                </tr>
            </table>
           <br>
           <hr>
            <br>
            <table border="1" align="center" cellpadding="10">
                <tr>
                    <th>S1.no</th>
                    <th>Viral Disease</th>
                    <th>Action</th>
                </tr>
                <%
             String sel="select * from tbl_viraldisease";
             int i=0;
             ResultSet rs=con.selectCommand(sel);
             while(rs.next())
             {
              i++;
                        
                    
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("vd_name")%></td>
                    <td>
                        <a href="ViralDisease.jsp?delid=<%=rs.getString("vd_id")%>">Delete</a>
                        <a href="ViralDisease.jsp?edid=<%=rs.getString("vd_id")%>">Edit</a>
                    </td>
                </tr>
                <%
             }
                %>
        </form>
    </body>
</html>
