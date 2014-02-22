<%-- 
    Document   : UnitForm
    Created on : Feb 22, 2014, 1:16:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>


<div class = "panel-heading" style = "font-weight: bold" ><img src="image/unit.png" width="35" height="35"> จัดการหน่วยนับ</div>
<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >

            <s:form action="UnitSave" theme="simple">
                <table width="40%" align="center">
                    <tr>
                        <td class="form-group has-success">
                            <s:label cssClass="control-label" for="inputSuccess1">หน่วยนับ : </s:label>
                            <s:textfield name="unitModel.unit" cssClass="form-control" width="350px" height="40px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="form-group has-success">
                            <s:label cssClass="control-label" for="inputSuccess1">รายละเอียด : </s:label>
                            <s:textfield name="unitModel.detail" cssClass="form-control" height="40px" />
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="center">
                            <s:a action="UnitSave" cssClass="btn btn-info">
                                <span><img src="image/save.png" width="35" height="35"> </span>
                                
                             บันทึก
                            </s:a>
                            <button type="button" class="btn btn-primary">
                                <img src="image/cancel.png" width="35" height="35"> ยกเลิก
                            </button>
                        </td>

                    </tr>
                </table>
            </s:form>

        </div>
    </div>
</div>
