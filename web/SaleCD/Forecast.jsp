<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/forecast.png" width="35" height="35"> พยากรณ์ยอดขาย</div>
<div class="panel-body">
    <div class="panel-group" id="accordion" >
        <div>
            <s:form action="ForecastSave" theme="simple">
                <table width="60%" align="center">
                    <tr>
                        <td align="right">เดือน/ปีที่ : </td>
                        <td class="form-group has-success">
                    <s:textfield name="forcastModel.range" cssClass="form-control" cssStyle="height: 40px;" />
                    </td>
                    </tr>
                    <tr>
                        <td align="right">ต้นทุนขาย : </td>
                        <td class="form-group has-success">
                    <s:textfield name="forecastModel.cost" cssClass="form-control" cssStyle="height: 40px;" />
                    </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right">ยอดขาย : </td>
                        <td class="form-group has-success">
                    <s:textfield name="forecastModel.sale" cssClass="form-control" cssStyle="height: 40px;" />
                    </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td align="right" width="145px">ยี่ห้อ : </td>
                        <td class="form-group has-success">
                    <s:select cssClass="form-control" name="forecastModel.unit" list="forecastShowList" style="height: 40px" />
                    </td>
                    <td>&nbsp;&nbsp;</td>
                    </tr>
                    <tr><td></td></tr>
                    <tr align="center">
                        <td></td>
                        <td style="margin-left: 200px;">
                    <s:submit type="button" cssClass="btn btn-info" >
                        <img src="image/save.png" width="26px" height="26px"> บันทึก
                    </s:submit>
                    <a type="button" href="LevelIndex" class="btn btn-info">
                        <img src="image/cancel.png" width="26px" height="26px"> ยกเลิก
                    </a>
                    </td>
                    </tr>
                    <tr><td></td></tr>
                </table>
            </s:form>
        </div>
         <div>
            <s:form action="ForecastSave" theme="simple">
                <table width="60%" align="center">
                    <tr>
                        <td align="right">ค่าใช้จ่ายเดือน/ปีที่ : </td>
                        <td class="form-group has-success">
                    <s:textfield name="forcastModel.forecast" cssClass="form-control" cssStyle="height: 40px;" />
                    </td>
                    <td>
                        <a type="button" href="LevelIndex" class="btn btn-info">
                            <img src="image/forecast.png" width="26px" height="26px"> พยากรณ์
                        </a>
                    </td>
                    </tr>
                </table>
            </s:form>
        </div>
        <br/>
        <div class="table-responsive" >
            <table class="table table-hover table-bordered table-striped table-responsive" >
                <thead>
                    <tr>
                        <th>เดือน/ปี</th>
                        <th>ต้นทุนขาย</th>
                        <th>ยอดขาย</th>
                        <th>กำไร</th>
                        <th>หน่วย</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <s:iterator value="forecastList" var="forecastRow">
                    <tr>
                        <td>${forecastRow.range}</td>
                        <td>${forecastRow.cost}</td>
                        <td>${forecastRow.sale}</td>
                        <td>${forecastRow.sale}-${forecastRow.cost}</td>
                        <td>${forecastRow.unit}</td>
                        <td colspan="2">  
                            <a class="btn btn-info" href="ForecastEdit?range=${forecastRow.range}">
                                <img src="image/edit.png" width="26px" height="26px"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="ForecastDelete?range=${forecastRow.range}" >
                                <img src="image/delete.png" width="26px" height="26px"> ลบ
                            </a>
                        </td>
                    </tr>
                </s:iterator>
                </tbody>
            </table>
        </div>
       
    </div>
</div>