
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};" ><img src="image/company.png" width="35" height="35"> จัดการบริษัท</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            
            <s:form action="CompanySave" theme="simple">
                <s:hidden name="companyModel.company_id" />
                <table width="70%" align="center">
                    <tr>
                        <td align="right" width="145px">ชื่อบริษัท : </td>
                        <td class="form-group has-success">
                            <s:textfield name="companyModel.company_name" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ที่อยู่ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="companyModel.company_address" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">เบอร์โทร : </td>
                        <td class="form-group has-success">
                            <s:textfield name="companyModel.tel" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">แฟกซ์ : </td>
                        <td class="form-group has-success">
                            <s:textfield name="companyModel.fax" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">เลขประจำตัวผู้เสียภาษี : </td>
                        <td class="form-group has-success">
                            <s:textfield name="companyModel.tax_number" cssClass="form-control" cssStyle="height: 40px;" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td></td>
                        <td style="margin-left: 200px;">
                            <s:submit type="button" cssClass="btn btn-info" >
                                <img src="image/save.png" width="35px" height="35px"> บันทึก
                            </s:submit>
                            <a type="button" href="CompanyIndex" class="btn btn-info">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </a>
                        </td>
                    </tr>
                </table>
            </s:form>
        </div>
    </div>
</div>
