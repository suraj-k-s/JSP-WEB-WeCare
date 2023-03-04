<%-- 
    Document   : Change Password
    Created on : Sep 18, 2021, 10:40:52 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <div id="tab" align="center">
         <%
            if(request.getParameter("btn_change")!=null)
            {
                String db ="";
                String cur=request.getParameter("txt_password");
                String ne=request.getParameter("txt_newpassword");
                String re=request.getParameter("txt_repassword");
               
               
                String sel="select * from tbl_family where family_id='"+session.getAttribute("uid")+"'";
                ResultSet rs=con.selectCommand(sel);
                if(rs.next())
                {  
                  db=rs.getString("family_password");
                }
               
               if(db.equals(cur))
               {
                 
                    if(ne.equals(re))
                    {
                        String up="update tbl_family set family_password='"+ne+"' where family_id='"+session.getAttribute("uid")+"'";
                         con.executeCommand(up);            
                        response.sendRedirect("../Guest/Login.jsp");
                    }
                    else
                    {
                        %>
                        <script type="text/javascript">
                                alert("Password Mismatch");
                        </script>
                       <%
                    }
               }
               else
               {
                    %>
                     <script type="text/javascript">
                             alert("Incorrect Current Password");
                     </script>
                    <%
                   
               }
             
            }    
        %>
           
        <form method="post" name="form1">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center"
        <tr><td>Old Password</td>
                    <td><input type="password" name="txt_password" id="txt_password"></td>
                </tr>
                <tr><td>New Password</td>
                    <td><input type="password" name="txt_newpassword" id="txt_newpassword"></td>
                </tr>
                <tr><td>Retype Password</td>
                    <td><input type="password" name="txt_repassword" id="txt_repassword"></td>
                </tr>
                <tr>
                     <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_change" id="btn_save" value="Save">
                       
                    </td>
                </tr>
                </table>
        </form>
    </div>
      
      </body>
      <%@include file="Foot.jsp" %>
</html>
