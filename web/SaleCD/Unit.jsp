<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sd" uri="/struts-dojo-tags" %>
<script>
    $(function() {
        //ซ่อนตาราง
        $("#hide").click(function() {
            $("#show_data").slideUp("slow");
        });
        //เเสดงตาราง
        $("#show").click(function() {
            $("#show_data").slideDown("slow");
        });
    });
</script>
<div class="panel-heading" style="font-weight: bold">หน่วยนับสินค้า</div>
<div class="panel-body">
    <a class="btn btn-info" href="">
        <span class="glyphicon glyphicon-plus"></span> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 550px; overflow: auto;">
        <table class="table table-hover table-bordered" >
            <thead >
                <tr>
                    <th>ลำดับ</th>
                    <th>หน่วยนับสินค้า</th>
                    <th>รายละเอียด</th>
                    <th>วันที่บันทึก</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="unitList" var="unitRow">
                    <tr>
                        <td><%out.print(i);%></td>
                        <td>${unitRow.unit}</td>
                        <td>${unitRow.detail}</td>
                        <td>${unitRow.date}</td>
                        <td colspan="2">  
                            <a class="btn btn-info" href="UnitEdit?unit_id=${unitRow.unit_id}">
                                <span class="glyphicon glyphicon-cog"></span> แก้ไข
                            </a>
                            <a class="btn btn-info" href="UnitDelete?unit_id=${unitRow.unit_id}" >
                                <span class="glyphicon glyphicon-trash"></span> ลบ
                            </a>
                        </td>
                    </tr>
                    <% i++;%>
                </s:iterator>
            </tbody>
        </table>
    </div>
</div>

