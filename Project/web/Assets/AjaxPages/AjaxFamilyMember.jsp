<%-- 
    Document   : AjaxFamilyMember.jsp
    Created on : Oct 8, 2021, 2:44:59 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>


<option>---select----</option>
    <%
        String sel="select * from tbl_familymembers where family_id='"+request.getParameter("pid") +"'";
        ResultSet rs=con.selectCommand(sel);
  
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("member_id")%>"><%=rs.getString("member_name")%></option>
            <%
        }
    %>