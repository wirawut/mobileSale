
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"> <img src="image/manageGeneral.png" width="35" height="35"> ตั้งค่าทั่วไป </div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <table width="100%">
                <tr>
                    <td align="center"><a href="HeaderIndex"><img  src="image/h.png" title="ตั้งค่าส่วนหัว" style="height: 50px ; width: 50px ;margin: 3px"></a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="MainMenuIndex"><img  src="image/m.png" title="ตั้งค่าส่วนเมนูหลัก" style="height: 50px ; width: 50px ;margin: 3px"></a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center" ><a href="OtherMenuIndex"><img  src="image/o.png" title="ตั้งค่าส่วนเมนูอื่นๆ" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center"><a href="HeaderIndex">ส่วนหัว</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="MainMenuIndex">ส่วนเมนูหลัก</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="OtherMenuIndex">ส่วนเมนูอื่นๆ</a></td>
                </tr>
                <tr><td><br/></td></tr>
                <tr>
                    <td align="center" ><a href="UserMenuIndex"><img src="image/u.png" title="ตั้งค่าส่วนเมนูผู้ใช้งาน" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center" ><a href="ContentMenuIndex"><img src="image/c.png" title="ตั้งค่าส่วนเนื้อหา" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center" ><a href="FooterIndex"><img src="image/f.png" title="ตั้งค่าส่วนท้าย" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center"><a href="UserMenuIndex">ส่วนเมนูผู้ใช้งาน</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="ContentMenuIndex">ส่วนเนื้อหา</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="FooterIndex">ส่วนท้าย</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>