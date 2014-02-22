<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {
       
    });
</script>
<div class="panel-heading" style="font-weight: bold"><img src="image/unit.png" title="หน่วยนับสินค้า" style="height: 35px ; width: 35px ;margin: 3px"> หน่วยนับสินค้า</div>
<div class="panel-body">
    <a class="btn btn-info" href="">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 550px; overflow: auto;">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead >
                <tr>
                    <th><center>ลำดับ</center></th>
                    <th>หน่วยนับสินค้า</th>
                    <th>รายละเอียด</th>
                    <th>วันที่บันทึก</th>
                    <th>การกระทำ</th>
                </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="unitList" var="unitRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                        <td>${unitRow.unit}</td>
                        <td>${unitRow.detail}</td>
                        <td>${unitRow.date}</td>
                        <td colspan="2">  
                            <a class="btn btn-info" href="UnitEdit?unit_id=${unitRow.unit_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="UnitDelete?unit_id=${unitRow.unit_id}" >
                                <img src="image/delete.png" width="35" height="35"> ลบ
                            </a>
                        </td>
                    </tr>
                    <% i++;%>
                </s:iterator>
            </tbody>
        </table>
    </div>
</div>

