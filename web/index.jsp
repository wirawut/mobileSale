<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html lang="en">
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="image/mobile.png" rel="shortcut icon" type="image/x-icon" />
        <title>โปรแกรมบริหารร้านโทรศัพท์มือถือ</title>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            //ห้ามคลิกขวา
            $(function() {
                $(this).bind("contextmenu", function(e) {
                    e.preventDefault();
                });
                $("#header").load("header.jsp");
                $("#footer").load("footer.jsp");
                $("#menuLeft").load("menuLeft.jsp");
            });
        </script>
    </head>
    <body >
        <div class="container">
            <s:iterator value="manageGeneralList" var="manageGeneralRow">
                <div class="row" style="margin-top: 10px"><div class="col-md-12"><div class="alert alert-info" style="font-family: ${manageGeneralRow.headerModel.header_font_name};font-style: ${manageGeneralRow.headerModel.header_font_style} ; font-size:  ${manageGeneralRow.headerModel.header_font_size};font-weight: ${manageGeneralRow.headerModel.header_font_weight};color: ${manageGeneralRow.headerModel.header_font_color};background-color: ${manageGeneralRow.headerModel.header_background_color};border-color: ${manageGeneralRow.headerModel.header_border_color};border-style: ${manageGeneralRow.headerModel.header_border_style} ; ;display: ${manageGeneralRow.headerModel.shows};"><img src="image/mobile.png" width="50px" height="50px"/>ระบบบริหารร้านโทรศัพท์มือถือ</div></div></div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="panel panel-default " style="border-color: ${manageGeneralRow.mainMenuModel.border_color} ;border-style: ${manageGeneralRow.mainMenuModel.border_style} ; display: ${manageGeneralRow.mainMenuModel.shows};">
                            <!-- Default panel contents -->
                            <div class="panel-heading panel-primary"  style="font-size:  ${manageGeneralRow.mainMenuModel.font_size_header}; font-family : ${manageGeneralRow.mainMenuModel.font_name}; font-style:  ${manageGeneralRow.mainMenuModel.font_style}; font-weight: ${manageGeneralRow.mainMenuModel.font_weight_header}; color: ${manageGeneralRow.mainMenuModel.font_color_header};background-color: ${manageGeneralRow.mainMenuModel.background_color_header};height: 55px;"> เมนูหลัก</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked" >
                                    <li><a href="SaleIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};"><img src="image/cart.png" width="35" height="35"> ขาย</a></li>
                                    <li><a href="StockIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};" ><img src="image/mobile.png" width="35" height="35"> คลังสินค้า</a></li>
                                    <li><a href="ReportIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};" ><img src="image/report.png" width="35" height="35">  รายงาน</a></li>
                                    <li><a href="ReportIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};" ><img src="image/forecast.png" width="35" height="35">  พยากรณ์ยอดขาย</a></li>
                                    <li><a href="ManageBasicIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};"><img src="image/manageBasic.png" width="35" height="35">  ตั้งค่าพื้นฐาน</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.otherMenuModel.border_color} ;border-style: ${manageGeneralRow.otherMenuModel.border_style} ;display: ${manageGeneralRow.otherMenuModel.shows};">
                            <!-- Default panel contents -->
                            <div class="panel-heading" width="35" height="35" style="font-size:  ${manageGeneralRow.otherMenuModel.font_size_header}; font-family : ${manageGeneralRow.otherMenuModel.font_name}; font-style:  ${manageGeneralRow.otherMenuModel.font_style}; font-weight: ${manageGeneralRow.otherMenuModel.font_weight_header}; color: ${manageGeneralRow.otherMenuModel.font_color_header};background-color: ${manageGeneralRow.otherMenuModel.background_color_header};height: 55px;"> เมนูอื่นๆ</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="OtherToolIndex" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><img src="image/tool.png" width="35" height="35"> เครื่องมือเสริม</a></li>
                                    <li><a href="ManageGeneralIndex" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><img src="image/manageGeneral.png"  height="35"> ตั้งค่าทั่วไป</a></li>
                                    <li><a href="ManageBoostrapIndex" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><img src="image/manageBootrap.png"  height="35"> ตั้งค่า Bootstrap</a></li>
                                    <li><a href="ManualIndex" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><img src="image/manual.png" width="35" height="35"> คู่มือการใช้งาน</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.userMenuModel.border_color} ;border-style: ${manageGeneralRow.userMenuModel.border_style} ; display: ${manageGeneralRow.userMenuModel.shows};">
                            <!-- Default panel contents -->
                            <div class="panel-heading" width="35" height="35" style="font-size:  ${manageGeneralRow.userMenuModel.font_size_header}; font-family : ${manageGeneralRow.userMenuModel.font_name}; font-style:  ${manageGeneralRow.userMenuModel.font_style}; font-weight: ${manageGeneralRow.userMenuModel.font_weight_header}; color: ${manageGeneralRow.userMenuModel.font_color_header};background-color: ${manageGeneralRow.userMenuModel.background_color_header};height: 55px;"> เมนูผู้ใช้งาน</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="UserIndex" style="font-size: ${manageGeneralRow.userMenuModel.font_size_detail};font-weight: ${manageGeneralRow.userMenuModel.font_weight_detail}; color: ${manageGeneralRow.userMenuModel.font_color_detail};font-family: ${manageGeneralRow.userMenuModel.font_name};font-style: ${manageGeneralRow.userMenuModel.font_style};background-color: ${manageGeneralRow.userMenuModel.background_color_detail};"><img src="image/user.png" width="35" height="35"> ความเป็นส่วนตัว</a></li>
                                    <li><a href="UnitIndex" style="font-size: ${manageGeneralRow.userMenuModel.font_size_detail};font-weight: ${manageGeneralRow.userMenuModel.font_weight_detail}; color: ${manageGeneralRow.userMenuModel.font_color_detail};font-family: ${manageGeneralRow.userMenuModel.font_name};font-style: ${manageGeneralRow.userMenuModel.font_style};background-color: ${manageGeneralRow.userMenuModel.background_color_detail};"><img src="image/exit.png" width="35" height="35"> ออกจากระบบ</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-9">
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.contentMenuModel.border_color} ;border-style: ${manageGeneralRow.contentMenuModel.border_style} ;display: ${manageGeneralRow.contentMenuModel.shows};font-size: ${manageGeneralRow.contentMenuModel.font_size_detail}; font-family: ${manageGeneralRow.contentMenuModel.font_name};font-style: ${manageGeneralRow.contentMenuModel.font_style};font-weight: ${manageGeneralRow.contentMenuModel.font_weight_detail};color: ${manageGeneralRow.contentMenuModel.font_color_detail} ; background-color: ${manageGeneralRow.contentMenuModel.background_color_detail} ;">
                            <s:if test="url!= null">
                                <jsp:include page="${url}" />
                            </s:if>
                        </div>
                    </div> 
                </div>
                <div class="row"><div class="col-md-12"><div class="alert alert-info" style="font-family: ${manageGeneralRow.footerModel.footer_font_name};font-style: ${manageGeneralRow.footerModel.footer_font_style} ; font-size:  ${manageGeneralRow.footerModel.footer_font_size};font-weight: ${manageGeneralRow.footerModel.footer_font_weight};color: ${manageGeneralRow.footerModel.footer_font_color};background-color: ${manageGeneralRow.footerModel.footer_background_color};border-color: ${manageGeneralRow.footerModel.footer_border_color};border-style: ${manageGeneralRow.footerModel.footer_border_style};display: ${manageGeneralRow.footerModel.shows}; ">Copyright © 20xx xxx.com All rights reserved. Co., Ltd. www.xxx.co.th</div></div></div>
            </s:iterator> 
        </div>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>