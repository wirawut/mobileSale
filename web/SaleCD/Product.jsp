
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"> คลังสินค้า</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <table width="100%">
                <tr>
                    <td align="center"><a href="MobileIndex"><img  src="image/mobile.png" title="โทรศัพท์" style="height: 50px ; width: 50px ;margin: 3px"></a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center" ><a href="SimIndex"><img  src="image/sim.png" title="ซิมการ์ด" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center" ><a href="OtherIndex"><img src="image/others.png" title="อุปกรณ์เสริม" style="height: 50px ; width: 50px ;margin: 3px"></a>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center"><a href="MobileIndex">โทรศัพท์</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="SimIndex">ซิมการ์ด</a></td>
                    <td>&nbsp;&nbsp;</td>
                    <td align="center"><a href="OtherIndex">อุปกรณ์เสริม</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>