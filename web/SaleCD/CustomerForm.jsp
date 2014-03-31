
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<script type="text/javascript">
    $(function() {
        $("#date").datepicker({dateFormat: 'dd/mm/yy'});
    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"> <img src="image/manageBasic.png" width="35" height="35"> <a href="ManageBasicIndex" > ตั้งค่าพื้นฐาน </a><img src="image/right.png" width="35" height="35"> <img src="image/customer.png" width="35" height="35"> <a href="CustomerIndex" > ลูกค้า </a><img src="image/right.png" width="35" height="35"> <img src="image/manage.png" width="35" height="35"> จัดการข้อมูลลูกค้า</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form action="CustomerSave" theme="simple">
                <table width="60%" align="center">
                    <tr><td></td></tr>
                    <tr>
                    
                        <td class="form-group has-success">
                            <s:hidden name="customerModel.customer_id" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">ชื่อ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.fname" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">นามสกุล : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.lname" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">ประเภท : </td>
                        <td class="form-group has-success">
                               <s:select cssClass="form-control" name="customerModel.customer_type" list="customerTypeShowList" style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">รหัสบัตรประชาชน : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.card_number" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">วัน/เดือน/ปีเกิด : </td>
                        <td class="form-group has-success">
                            <s:textfield id="date" name="customerModel.birthdate" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">เพศ : </td>
                        <td class="form-group has-success">
                              <s:select cssClass="form-control" name="customerModel.sex" list="sexShowList"  style="height: 40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">ที่อยู่ : </td>
                        <td class="form-group has-success">
                            <s:textarea name="customerModel.address" cssClass="form-control" cssStyle="height: 120px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">อีเมล์ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.email" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">เบอร์โทร : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.tel" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                     <tr>
                        <td align="right">รูปภาพ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="customerModel.image" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="CustomerIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
