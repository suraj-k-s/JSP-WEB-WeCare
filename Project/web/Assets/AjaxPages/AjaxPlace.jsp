<%-- 
    Document   : AjaxPlace.jsp
    Created on : Sep 22, 2021, 12:01:51 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>


<option>---select----</option>
    <%
        String sel="select * from tbl_wardplaces where ward_id='"+request.getParameter("wid") +"'";
        ResultSet rs=con.selectCommand(sel);
  
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("wp_id")%>"><%=rs.getString("wp_name")%></option>
            <%
        }
    %>
        
