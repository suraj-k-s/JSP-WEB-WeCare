<%-- 
    Document   : familymember
    Created on : Sep 18, 2021, 9:34:32 PM
    Author     : user
--%>
 <%
        DateFormat yearf = new SimpleDateFormat("YYYY");
        DateFormat monthf = new SimpleDateFormat("MM");
        DateFormat dayf = new SimpleDateFormat("dd");

        String year = yearf.format(new Date());
        String month = monthf.format(new Date());
        String day = dayf.format(new Date());

        int yearnew = Integer.parseInt(year) ;
        
        String Date = String.valueOf(yearnew)+"-"+month+"-"+day;

     

    %>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
    <%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Family Member</title>
    </head>
    <body>
         <div id="tab" align="center">
       
      <form method="post" enctype="multipart/form-data" action="../Assets/UploadAction/FamilyMemberUploadAction.jsp" name="form8">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr><td>Name</td>
                    <td><input type="text" name="txt_name" id="txt_name"required></td>
                </tr>
                <tr>
                    <td>Profile</td>
                    <td><input type="file" name="file_profile"></td>
                </tr>
                <tr><td>Contact</td>
                <a href="familymember.jsp"></a>
                    <td><input type="text" name="txt_contact" id="txt_contact"required></td>
                </tr>
                <tr><td>Email</td>
                    <td><input type="email" name="txt_email" id="txt_email" required></td>
                </tr>
                <tr><td>Gender</td>
                    <td><input type="radio" name="radio_gender" id="radio_gender1" value=Male" required>Male
                    <input type="radio" name="radio_gender" id="radio_gender2" value=Female">Female
                    <input type="radio" name="radio_gender" id="radio_gender2" value=Others">Others
                    </td>
                </tr>
                <tr><td>Adhar number</td>
                    <td><input type="text" name="txt_adhar" id="txt_adhar"required></td>
                </tr>
                 <tr><td>DOB</td>
                    <td><input type="date" name="date" max="<%=Date%>" id="date"required ></td>
                 </tr
                 <tr>
                    <td>Status</td>
                    <td>
                        <input type="radio" name="radio" id="radio1" value="Job" required> Job
                        <input type="radio" name="radio" id="radio2" value="Student">Student
                        <input type="radio" name="radio" id="radio3" value="Other">Other
                    </td>
                </tr>
                  <tr><td>Relation</td>
                 <td><select name=“list” required>
                     <option>---select----</option>
                     <%
                 String sel="select * from tbl_familyrole";
                 ResultSet rs = con.selectCommand(sel);
                 while(rs.next())
                 {
                     %>
                     <option value="<%=rs.getString("fr_id")%>"><%=rs.getString("fr_name")%></option>
                     <%
                 }
                 %>
                     </select>
                 </td>
                 </tr>
                 <tr>
                     <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_save" id="btn_save" value="Save"><input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                     </tr>
               
              </table>
        </form>
         </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
