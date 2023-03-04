<%-- 
    Document   : Vaccine.jsp
    Created on : Sep 18, 2021, 10:03:09 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine</title>
         <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>
    <%
    if(request.getParameter("btn_save")!=null)
    {
        
        String panId = request.getParameter("pandemic");
        String vacName = request.getParameter("txt_vname");
        String vacDesc= request.getParameter("txt_desc");
        String vacDose=request.getParameter("doses");
        
        String ins = "insert into tbl_vaccine(pandemic_id,vaccine_name,vaccine_desc,vaccine_dose)values('"+panId+"','"+vacName+"','"+vacDesc+"','"+vacDose+"')";
        con.executeCommand(ins);
        
    }
    
    
    
    %>
    
        <%
        if(request.getParameter("delid")!=null)
            {
                String del="delete from tbl_vaccine where vaccine_id='"+request.getParameter("delid")+"'";
                con.executeCommand(del);
            }
        %>
        <body>
        <form method="post" name="form2">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr> 
                    <td>Pandemic Name</td>
                    <td>
                        <select name="pandemic" id="pandemic" required>
                            <option>--select--</option>
                            <%
                 String sel="select * from tbl_pandemic";
                 ResultSet rs = con.selectCommand(sel);
                 while(rs.next())
                 {
                     %>
                     <option value="<%=rs.getString("pandemic_id")%>"><%=rs.getString("pandemic_name")%></option>
                     <%
                 }
                 %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Vaccine Name</td>
                    <td><input type="text" name="txt_vname" id="txt_vname"required></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea id="txt_desc" name="txt_desc" rows="5" cols="50" required></textarea></td>
                </tr>
                <tr> 
                    <td>No.of Doses</td>
                    <td>
                        <select name="doses" id="doses" required>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_save" id="btn_save" value="Save"><input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
                        
            <table border="1" align="center">
                     <tr>
                         <th>Sl.No</th>
                         <th>Pandemic</th>
                         <th>Vaccine Name</th>
                         <th>Description</th>
                         <th>Dose</th>
                         <th>Action</th>
                     </tr>
                     <%
                 int i = 0;
                     String sel1 = "select * from tbl_vaccine v inner join tbl_pandemic p on p.pandemic_id=v.pandemic_id";
                     ResultSet rs1 = con.selectCommand(sel1);
                     while(rs1.next())
                     {
                         i++;
                         %>
                         <tr>
                             <td><%=i%></td>
                             <td><%=rs1.getString("pandemic_name")%></td>
                             <td><%=rs1.getString("vaccine_name")%></td>
                             <td><%=rs1.getString("vaccine_desc")%></td>
                             <td><%=rs1.getString("vaccine_dose")%></td>
                             <td>
                                 <a href="Vaccine.jsp?delid=<%=rs1.getString("vaccine_id")%>"class="status_btn">Delete</a>
                             </td>
                         </tr>
                         
                         <%
                     }
                     
                     
                     %>
                 </table>
        </form>
    </body>
</html>
