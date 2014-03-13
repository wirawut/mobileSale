
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"> <a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"> <img src="image/manageBasic.png" width="35" height="35"> <a href="ManageBasicIndex" > ตั้งค่าพื้นฐาน </a> <img src="image/right.png" width="35" height="35"> <img src="image/product_type.png" width="35" height="35"> <a href="ProductTypeIndex" > ประเภทสินค้า </a> <img src="image/right.png" width="35" height="35"> <img src="image/mobile.png" width="35" height="35"> <a href="OtherTypeIndex">ประเภทอุปกรณ์เสริม</a> <img src="image/right.png" width="35" height="35"> <img src="image/manage.png" width="35" height="35"> จัดการประเภทอุปกรณเสริม</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form action="OtherTypeSave" theme="simple">
                <!--ไอดีที่มาจาก editที่เลือกเอาไว้ส่งไปตอนกดปุ่มบันทึก-->
                <s:hidden name="OtherTypeModel.other_type_id" />
                <table width="60%" align="center">
                    <tr>
                        <td align="right">ประเภท : </td>
                        <td class="form-group has-success">
                            <s:textfield name="OtherTypeModel.other_type" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รายละเอียด : </td>
                        <td class="form-group has-success">
                            <s:textfield name="otherTypeModel.detail" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="OtherTypeIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
