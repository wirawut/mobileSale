
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};" ><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"><img src="image/manageGeneral.png" width="35" height="35"><a href="ManageGeneralIndex" > ตั้งค่าทั่วไป </a><img src="image/right.png" width="35" height="35"><img src="image/o.png" width="35" height="35"> ส่วนเมนูอื่นๆ</div>
<div class = "panel-body" >
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form action="OtherMenuSave" theme="simple">
                <s:hidden name="otherMenuModel.other_menu_id" />
                <table width="70%" align="center">
                    <tr>
                        <td align="right" width="165px">การเเสดง : </td>
                        <td class="form-group has-success">
                          <s:select cssClass="form-control" name="otherMenuModel.shows" list="otherMenuShowList"  style="height: 40px" />
                        </td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ชื่อฟอนท์ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.font_name" id="inputSuccess1" cssClass="form-control" style="height: 40px"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ลักษณะฟอนท์ : </td>
                        <td class="form-group has-success">
                             <s:textfield name="otherMenuModel.font_style" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ขนาดฟอนท์(หัวข้อ) : </td>
                        <td class="form-group has-success">
                             <s:textfield name="otherMenuModel.font_size_header" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ขนาดฟอนท์(รายละเอียด) : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.font_size_detail" cssClass="form-control" style="height: 40px"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ความหนา(หัวข้อ) : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.font_weight_header" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ความหนา(รายละเอียด) : </td>
                        <td class="form-group has-success">
                           <s:textfield name="otherMenuModel.font_weight_detail" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">สีฟอนท์(หัวข้อ) : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.font_color_header" cssClass="form-control"  style="height: 40px"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">สีฟอนท์(รายละเอียด) : </td>
                        <td class="form-group has-success">
                          <s:textfield name="otherMenuModel.font_color_detail" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">สีพื้นหลัง(หัวข้อ) : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.background_color_header" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">สีพื้นหลัง(รายละเอียด) : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.background_color_detail" cssClass="form-control"  style="height: 40px"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">สีเส้นขอบ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherMenuModel.border_color" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">ความหน้าเส้นขอบ : </td>
                        <td class="form-group has-success">
                           <s:textfield name="otherMenuModel.border_weight" cssClass="form-control" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ลักษณะเส้นขอบ : </td>
                        <td class="form-group has-success">
                          <s:textfield name="otherMenuModel.border_style" cssClass="form-control"  style="height: 40px"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="ManageGeneralIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
