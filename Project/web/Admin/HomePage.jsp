
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html lang="zxx">

        <head>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>

    </head>
    <body class="crm_body_bg">


        <section class="main_content dashboard_part">
            <!-- menu  -->

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="single_element">
                                <div class="quick_activity">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="quick_activity_wrap">
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/Template/Admin/img/icon/shop.jpg" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%                                                                    
                                                                String selS = "select count(*) as s from tbl_ashaworker";
                                                                    ResultSet rsS = con.selectCommand(selS);
                                                                    if (rsS.next()) {
                                                                        out.println(rsS.getString("s"));
                                                                    }
                                                                %>
                                                            </span> </h3>
                                                        <p>Asha Worker</p>
                                                    </div>
                                                </div>
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/Template/Admin/img/icon/user.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String selC = "select count(*) as c from tbl_family";
                                                                    ResultSet rsC = con.selectCommand(selC);
                                                                    if (rsC.next()) {
                                                                        out.println(rsC.getString("c"));
                                                                    }
                                                                %>
                                                            </span> </h3>
                                                        <p>Family</p>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <div class="white_box card_height_100">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Family</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">
                                    <%
                                        String selQryS = "select * from tbl_familymembers";
                                        ResultSet rsQS = con.selectCommand(selQryS);
                                        while (rsQS.next()) {

                                    %>
                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/FamilyMemberPhoto/<%=rsQS.getString("member_photo")%>" alt="">
                                        </div>
                                        <h4><%=rsQS.getString("member_name")%></h4>
                                        <p><%=rsQS.getString("member_contact")%></p>
                                    </div>
                                    <%
                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <%@include file="Foot.jsp" %>
    </body>
</html>