
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>


<script type="text/javascript">
    $(function() {
        $("#date").datepicker({dateFormat: 'dd/mm/yy'});
    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"><a href="ProductIndex"> คลังสินค้า</a> <img src="image/right.png" width="35" height="35"><img src="image/sim.png" width="35" height="35"> <a href="SimIndex"> ซิมการ์ด</a> <img src="image/right.png" width="35" height="35"><img src="image/manage.png" width="35" height="35"> จัดการซิมการ์ด</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form action="SimSave" theme="simple">
                <!--ไอดีที่มาจาก editที่เลือกเอาไว้ส่งไปตอนกดปุ่มบันทึก-->
                <s:hidden name="simModel.sim_id" />
                <table width="60%" align="center">
                    <tr>
                        <td align="right" width="145px">เครือข่าย : </td>
                        <td class="form-group has-success">
                            <s:select cssClass="form-control" name="simTypeModel.sim_type_id" list="simTypeShowList" listKey="sim_type_id" listValue="sim_type" style="height: 40px" />
                        </td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">โปรโมชั่น : </td>
                        <td class="form-group has-success">
                            <s:textfield name="simModel.sim" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รูปภาพ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="simModel.image" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ราคาซื้อ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="simModel.price_buy" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ราคาขาย : </td>
                        <td class="form-group has-success">
                            <s:textfield name="simModel.price_sale" cssClass="form-control" cssStyle="height: 40px;" />
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
                            <s:textfield name="simModel.quantity" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">วันที่ : </td>
                        <td class="form-group has-success">
                            <s:textfield id="date" name="simModel.date" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รายละเอียด : </td>
                        <td class="form-group has-success">
                            <s:textarea name="simModel.detail" cssClass="form-control" cssStyle="height: 120px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="SimIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
