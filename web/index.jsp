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
            <div class="row" style="margin-top: 10px"><div class="col-md-12"><div class="alert alert-info" style="color: black"><h3>ระบบบริหารร้านโทรศัพท์มือถือ</h3></div></div></div>

            <div class="row">
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading" style="font-weight: bold">เมนูหลัก</div>
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#" style="color: #000">ขาย</a></li>
                                <li><a href="#" style="color: #000">คลังสินค้า</a></li>
                                <li><a href="#" style="color: #000">รายงาน</a></li>
                                <li><a href="UnitIndex" style="color: #000">ตั้งค่าพื้นฐาน</a></li>
                            </ul>
                        </div>
                    </div>
                 
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading" style="font-weight: bold">เมนูอื่นๆ</div>
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#" style="color: #000">เครื่องมือเสริม</a></li>
                                <li><a href="#" style="color: #000">ตั้งค่าทั่วไป</a></li>
                                <li><a href="#" style="color: #000">คู่มือการใช้งาน</a></li>
                            </ul>
                        </div>
                    </div>
                     <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading" style="font-weight: bold">เมนูผู้ใช้งาน</div>
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#" style="color: #000">ความเป็นส่วนตัว</a></li>
                                <li><a href="UnitIndex" style="color: #000">ออกจากระบบ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="panel panel-default">
                        <s:if test="url!= null">
                            <jsp:include page="${url}" />
                        </s:if>
                    </div>
                </div> 
            </div>
            <div class="row"><div class="col-md-12"><div class="alert alert-info" style="color: black">Copyright © 20xx xxx.com All rights reserved. Co., Ltd. www.xxx.co.th</div></div></div>
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
