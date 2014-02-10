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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <script type="text/javascript">
            $(function() {
                $("#header").load("header.jsp");
                $("#footer").load("footer.jsp");
                $("#menuLeft").load("menuLeft.jsp");
            });
        </script>
      
    </head>
    <body >
        <div class="container">
            <s:iterator value="manageGeneralList" var="manageGeneralRow">
                <div class="row" style="margin-top: 10px"><div class="col-md-12"><div class="alert alert-info" style="font-family: ${manageGeneralRow.headerModel.header_font_name};font-style: ${manageGeneralRow.headerModel.header_font_style} ; font-size:  ${manageGeneralRow.headerModel.header_font_size};font-weight: ${manageGeneralRow.headerModel.header_font_weight};color: ${manageGeneralRow.headerModel.header_font_color};background-color: ${manageGeneralRow.headerModel.header_background_color};border-color: ${manageGeneralRow.headerModel.header_border_color};border-style: ${manageGeneralRow.headerModel.header_border_style}">ระบบบริหารร้านโทรศัพท์มือถือ</div></div></div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.mainMenuModel.border_color} ;border-style: ${manageGeneralRow.mainMenuModel.border_style} ;">
                            <!-- Default panel contents -->
                            <div class="panel-heading" style="font-size:  ${manageGeneralRow.mainMenuModel.font_size_header}; font-family : ${manageGeneralRow.mainMenuModel.font_name}; font-style:  ${manageGeneralRow.mainMenuModel.font_style}; font-weight: ${manageGeneralRow.mainMenuModel.font_weight_header}; color: ${manageGeneralRow.mainMenuModel.font_color_header};background-color: ${manageGeneralRow.mainMenuModel.background_color_header};"><span class="glyphicon glyphicon-th-large"></span> เมนูหลัก</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked" >
                                    <li><a href="#" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};"><span class="glyphicon glyphicon-shopping-cart"></span> ขาย</a></li>
                                    <li><a href="#" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};" ><span class="glyphicon glyphicon-lock"></span> คลังสินค้า</a></li>
                                    <li><a href="#" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};" ><span class="glyphicon glyphicon-stats"></span> รายงาน</a></li>
                                    <li><a href="UnitIndex" style="font-size: ${manageGeneralRow.mainMenuModel.font_size_detail};font-weight: ${manageGeneralRow.mainMenuModel.font_weight_detail}; color: ${manageGeneralRow.mainMenuModel.font_color_detail};font-family: ${manageGeneralRow.mainMenuModel.font_name};font-style: ${manageGeneralRow.mainMenuModel.font_style};background-color: ${manageGeneralRow.mainMenuModel.background_color_detail};"><span class="glyphicon glyphicon-cog"></span> ตั้งค่าพื้นฐาน</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.otherMenuModel.border_color} ;border-style: ${manageGeneralRow.otherMenuModel.border_style} ;">
                            <!-- Default panel contents -->
                            <div class="panel-heading" style="font-size:  ${manageGeneralRow.otherMenuModel.font_size_header}; font-family : ${manageGeneralRow.otherMenuModel.font_name}; font-style:  ${manageGeneralRow.otherMenuModel.font_style}; font-weight: ${manageGeneralRow.otherMenuModel.font_weight_header}; color: ${manageGeneralRow.otherMenuModel.font_color_header};background-color: ${manageGeneralRow.otherMenuModel.background_color_header};"><span class="glyphicon glyphicon-list"></span> เมนูอื่นๆ</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><span class="glyphicon glyphicon-cutlery"></span> เครื่องมือเสริม</a></li>
                                    <li><a href="ManageGeneralEdit?user_id=${manageGeneralRow.user_id}" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><span class="glyphicon glyphicon-adjust"></span> ตั้งค่าทั่วไป</a></li>
                                    <li><a href="ManageBoostrapIndex" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><span class="glyphicon glyphicon-bold"></span> ตั้งค่า Bootstrap</a></li>
                                    <li><a href="#" style="font-size: ${manageGeneralRow.otherMenuModel.font_size_detail};font-weight: ${manageGeneralRow.otherMenuModel.font_weight_detail}; color: ${manageGeneralRow.otherMenuModel.font_color_detail};font-family: ${manageGeneralRow.otherMenuModel.font_name};font-style: ${manageGeneralRow.otherMenuModel.font_style};background-color: ${manageGeneralRow.otherMenuModel.background_color_detail};"><span class="glyphicon glyphicon-question-sign"></span> คู่มือการใช้งาน</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.usermenuModel.border_color} ;border-style: ${manageGeneralRow.usermenuModel.border_style} ;">
                            <!-- Default panel contents -->
                            <div class="panel-heading" style="font-size:  ${manageGeneralRow.usermenuModel.font_size_header}; font-family : ${manageGeneralRow.usermenuModel.font_name}; font-style:  ${manageGeneralRow.usermenuModel.font_style}; font-weight: ${manageGeneralRow.usermenuModel.font_weight_header}; color: ${manageGeneralRow.usermenuModel.font_color_header};background-color: ${manageGeneralRow.usermenuModel.background_color_header};"><span class="glyphicon glyphicon-user"></span> เมนูผู้ใช้งาน</div>
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#" style="font-size: ${manageGeneralRow.usermenuModel.font_size_detail};font-weight: ${manageGeneralRow.usermenuModel.font_weight_detail}; color: ${manageGeneralRow.usermenuModel.font_color_detail};font-family: ${manageGeneralRow.usermenuModel.font_name};font-style: ${manageGeneralRow.usermenuModel.font_style};background-color: ${manageGeneralRow.usermenuModel.background_color_detail};"><span class="glyphicon glyphicon-edit"></span> ความเป็นส่วนตัว</a></li>
                                    <li><a href="UnitIndex" style="font-size: ${manageGeneralRow.usermenuModel.font_size_detail};font-weight: ${manageGeneralRow.usermenuModel.font_weight_detail}; color: ${manageGeneralRow.usermenuModel.font_color_detail};font-family: ${manageGeneralRow.usermenuModel.font_name};font-style: ${manageGeneralRow.usermenuModel.font_style};background-color: ${manageGeneralRow.usermenuModel.background_color_detail};"><span class="glyphicon glyphicon-off"></span> ออกจากระบบ</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-9">
                        <div class="panel panel-default" style="border-color: ${manageGeneralRow.contentMenuModel.border_color} ;border-style: ${manageGeneralRow.contentMenuModel.border_style} ;">
                            <s:if test="url!= null">
                                <jsp:include page="${url}" />
                            </s:if>
                        </div>
                    </div> 
                </div>
                <div class="row"><div class="col-md-12"><div class="alert alert-info" style="font-family: ${manageGeneralRow.footerModel.footer_font_name};font-style: ${manageGeneralRow.footerModel.footer_font_style} ; font-size:  ${manageGeneralRow.footerModel.footer_font_size};font-weight: ${manageGeneralRow.footerModel.footer_font_weight};color: ${manageGeneralRow.footerModel.footer_font_color};background-color: ${manageGeneralRow.footerModel.footer_background_color};border-color: ${manageGeneralRow.footerModel.footer_border_color};border-style: ${manageGeneralRow.footerModel.footer_border_style}">Copyright © 20xx xxx.com All rights reserved. Co., Ltd. www.xxx.co.th</div></div></div>
            </s:iterator> 
        </div>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>