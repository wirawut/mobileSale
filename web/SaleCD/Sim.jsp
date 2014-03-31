<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"><a href="ProductIndex"> คลังสินค้า</a> <img src="image/right.png" width="35" height="35"> <img src="image/sim.png" width="35" height="35"> ซิมการ์ด</div>
<div class="panel-body">
    <a class="btn btn-info" href="SimAdd">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead>
                <tr>
                    <th><center>ลำดับ</center></th>
           <!-- <th>รหัส</th>-->
            <th>เครือข่าย</th>
            <th>โปร</th>
            <th>รูปภาพ</th>
            <th>ราคาซื้อ</th>
            <th>ราคาขาย</th>
            <th>หน่วยนับ</th>
            <th>จำนวน</th>
           <!-- <th>วันที่บันทึก</th>-->
            <th></th>
            </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="simList" var="simRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                       <!-- <td>${simRow.sim_id}</td>-->
                        <td>${simRow.simTypeModel.sim_type}</td>
                        <td>${simRow.sim}</td>
                        <td>${simRow.image}</td>
                        <td>${simRow.price_buy}</td>
                        <td>${simRow.price_sale}</td>
                        <td>${simRow.unitModel.unit}</td>
                        <td>${simRow.quantity}</td>
                        <!--<td>${simRow.date}</td>-->
                        <td colspan="2">  
                            <a class="btn btn-info" href="SimEdit?sim_id=${simRow.sim_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="SimDelete?sim_id=${simRow.sim_id}" >
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