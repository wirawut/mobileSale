
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>


<script type="text/javascript">
    $(function() {
        $("#date").datepicker({dateFormat: 'dd/mm/yy'});
    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"><a href="ProductIndex"> คลังสินค้า</a> <img src="image/right.png" width="35" height="35"><img src="image/mobile.png" width="35" height="35"> <a href="MobileIndex"> โทรศัพท์</a> <img src="image/right.png" width="35" height="35"><img src="image/manage.png" width="35" height="35"> จัดการโทรศัพท์</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form action="MobileSave" theme="simple">
                <!--ไอดีที่มาจาก editที่เลือกเอาไว้ส่งไปตอนกดปุ่มบันทึก-->
                <s:hidden name="mobileModel.mobile_id" />
                <table width="60%" align="center">
                    <tr>
                        <td align="right" width="145px">ยี่ห้อ : </td>
                        <td class="form-group has-success">
                            <s:select cssClass="form-control" name="mobileTypeModel.mobile_type_id" list="mobileTypeShowList" listKey="mobile_type_id" listValue="mobile_type" style="height: 40px" />
                        </td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">รุ่น : </td>
                        <td class="form-group has-success">
                            <s:textfield name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รูปภาพ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="mobileModel.image" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ราคาซื้อ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="mobileModel.price_buy" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ราคาขาย : </td>
                        <td class="form-group has-success">
                            <s:textfield name="mobileModel.price_sale" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right" width="145px">หน่วยนับ : </td>
                        <td class="form-group has-success">
                            <s:select cssClass="form-control" name="unitModel.unit_id" list="unitShowList" listKey="unit_id" listValue="unit" style="height: 40px" />
                        </td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">จำนวน : </td>
                        <td class="form-group has-success">
                            <s:textfield name="mobileModel.quantity" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">วันที่ : </td>
                        <td class="form-group has-success">
                            <s:textfield id="date" name="mobileModel.date" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รายละเอียด : </td>
                        <td class="form-group has-success">
                            <s:textarea name="mobileModel.detail" cssClass="form-control" cssStyle="height: 120px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="MobileIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
