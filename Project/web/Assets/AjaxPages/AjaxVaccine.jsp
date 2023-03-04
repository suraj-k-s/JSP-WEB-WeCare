<%-- 
    Document   : AjaxVaccine.jsp
    Created on : Oct 8, 2021, 12:02:22 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>


<option>---select----</option>
    <%
        String sel="select * from tbl_vaccine where pandemic_id='"+request.getParameter("pid") +"'";
        ResultSet rs=con.selectCommand(sel);
  
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("vaccine_id")%>"><%=rs.getString("vaccine_name")%></option>
            <%
        }
    %>