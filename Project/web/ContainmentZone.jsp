<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>

<%
    String selQry = "select distinct(wp.ward_id) from tbl_viraldiseasereport vdr inner join tbl_familymembers fm on fm.member_id=vdr.member_id inner join tbl_family f on f.family_id=fm.family_id inner join tbl_wardplaces wp on wp.wp_id=f.wp_id";
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {
        String selQry1 = "select count(wp.ward_id) as tot from tbl_viraldiseasereport vdr inner join tbl_familymembers fm on fm.member_id=vdr.member_id inner join tbl_family f on f.family_id=fm.family_id inner join tbl_wardplaces wp on wp.wp_id=f.wp_id where wp.ward_id='" + rs.getString("ward_id") + "'";
        ResultSet rs1 = con.selectCommand(selQry1);
        rs1.next();
        String selQry2 = "select ward_population from tbl_ward where ward_id='" + rs.getString("ward_id") + "'";
        ResultSet rs2 = con.selectCommand(selQry2);
        rs2.next();
        int population = Integer.parseInt(rs2.getString("ward_population"));
        int per1 = (75 * population) / 100;
        int per2 = (50 * population) / 100;
        int per3 = (25 * population) / 100;

        String selCh = "select * from tbl_containmentzone where ward_id='" + rs.getString("ward_id") + "'";
        ResultSet rsCh = con.selectCommand(selCh);
        if (rsCh.next()) {

            if (Integer.parseInt(rs1.getString("tot")) > per1) {
                String upQry = "update tbl_containmentzone set ribbon_name='Red',cntnmnt_date=curdate(),ribbon_desc='Highly Affected Area' where ward_id='" + rsCh.getString("ward_id") + "'";
                con.executeCommand(upQry);

            } else if (Integer.parseInt(rs1.getString("tot")) > per2) {
                String upQry = "update tbl_containmentzone set ribbon_name='Orange',cntnmnt_date=curdate(),ribbon_desc='Medium Affected Area' where ward_id='" + rsCh.getString("ward_id") + "'";
                con.executeCommand(upQry);

            } else if (Integer.parseInt(rs1.getString("tot")) > per3) {
                String upQry = "update tbl_containmentzone set ribbon_name='Green',cntnmnt_date=curdate(),ribbon_desc='Low Affected Area' where ward_id='" + rsCh.getString("ward_id") + "'";
                con.executeCommand(upQry);

            } else {
                String delQry = "delete from tbl_containmentzone ward_id='" + rsCh.getString("ward_id") + "'";
                con.executeCommand(delQry);
            }

        } else {
            if (Integer.parseInt(rs1.getString("tot")) > per1) {
                
                String insQry = "insert into tbl_containmentzone(ward_id,ribbon_name,cntnmnt_date,ribbon_desc)"
                        + "value('" + rs.getString("ward_id") + "','Red',curdate(),'Highly Affected Area')";

                con.executeCommand(insQry);

            } else if (Integer.parseInt(rs1.getString("tot")) > per2) {
                String insQry = "insert into tbl_containmentzone(ward_id,ribbon_name,cntnmnt_date,ribbon_desc)"
                        + "value('" + rs.getString("ward_id") + "','Orange',curdate(),'Medium Affected Area')";

                con.executeCommand(insQry);

            } else if (Integer.parseInt(rs1.getString("tot")) > per3) {
                String insQry = "insert into tbl_containmentzone(ward_id,ribbon_name,cntnmnt_date,ribbon_desc)"
                        + "value('" + rs.getString("ward_id") + "','Green',curdate(),'Low Affected Area')";

                con.executeCommand(insQry);
                System.out.println(insQry);

            } else {
                String delQry = "delete from tbl_containmentzone ward_id='" + rs.getString("ward_id") + "'";
                con.executeCommand(delQry);
            }
        }

    }
%>