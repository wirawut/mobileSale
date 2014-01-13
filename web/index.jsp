<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="image/cd.png" rel="shortcut icon" type="image/x-icon" />
        <title>โปรแกรมบริหารร้านโทรศัพท์มือถือ</title>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <!-- mobile viewport optimisation -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- stylesheets -->
        <link rel="stylesheet" href="Gumby-master/css/gumby.css" type="text/css"/>
        <link rel="stylesheet" href="Gumby-master/fonts/icons/entypo.eot" type="text/css" />
        <link rel="stylesheet" href="Gumby-master/fonts/icons/entypo.ttf" type="text/css"/>
        <link rel="stylesheet" href="Gumby-master/fonts/icons/entypo.woff" type="text/css"/>
        <link rel="stylesheet" href="Gumby-master/sass/var/_settings.scss" type="text/css"/>
        <link rel="stylesheet" href=Gumby-master/css/style.css" type="text/css"/>

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
        <!--import header-->
        <div class="row">
            <div class="twelve columns">
                <p>12 columns</p>
            </div>
        </div>
        <div class="row">
            <div class="four columns">
              <nav id="sidebar-nav-holder" class="vertical-nav unfixed" gumby-fixed="top" gumby-pin="[data-target='icons']" style="top: 0px; left: 124.5px; width: 300px;">
            <ul id="sidebar-nav">
              
                <li class="active">
                  <a href="#design-styles" class="skip" gumby-update="" gumby-duration="600" gumby-goto="[data-target='design-styles']">หน้าหลัก</a>
                </li>
                
                <li>
                  <a href="#buttons" class="skip" gumby-update="" gumby-duration="600" gumby-goto="[data-target='buttons']">ขาย</a>
                </li>
                
                <li>
                  <a href="#indicators" class="skip" gumby-update="" gumby-duration="600" gumby-goto="[data-target='indicators']">สต๊อก</a>
                </li>
                
                <li class="">
                  <a href="#forms" class="skip" gumby-update="" gumby-duration="600" gumby-goto="[data-target='forms']">รายงาน</a>
                </li>
                
                <li class="">
                  <a href="#navigation" class="skip" gumby-update="" gumby-duration="600" gumby-goto="[data-target='navigation']">ตั้งค่า</a>
                </li>
                
              
                
             
                
            </ul>
          </nav>
            </div>
            <div class="eight columns">
                <p>6 columns</p>
            </div>
        </div>

    </body>
</html>
