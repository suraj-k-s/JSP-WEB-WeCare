<%-- 
    Document   : ChangePassword.jsp
    Created on : Sep 26, 2021, 10:12:48 AM
    Author     : User
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
     <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <div id="tab" align="center">
        <form method="post" name="frmchange">
            <%
                if(request.getParameter("btn_change")!=null)
                {
                    String db="";
                    String cur=request.getParameter("txt_cur");
                    String ne=request.getParameter("txt_new");
                    String re=request.getParameter("txt_re");
                    
                    String sel="Select * from tbl_wardmember where wm_id='"+session.getAttribute("wmid")+"'";
                    ResultSet rs=con.selectCommand(sel);
                    
                    
                    if(rs.next())
                    {
                        db=rs.getString("wm_password");
                    }
                    if(db.equals(cur))
                    {
                        if(ne.equals(re))
                        {
                            String up="update tbl_wardmember set wm_password='"+ne+"'";
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
                
                alert("invalid current password");
            </script>
            <%
                    }
                }
                
            
            %>
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>
                        Current Password
                    </td>
                    <td>
                        <input type="password" name="txt_cur" required>
                        
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        New Password
                    </td>
                    <td>
                        <input type="password" name="txt_new" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Retype Password
                    </td>
                    <td>
                        <input type="password" name="txt_re" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btn_change" name="btn_change" value="Change">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
