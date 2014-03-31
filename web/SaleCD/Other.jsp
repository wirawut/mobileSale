<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"><a href="ProductIndex"> คลังสินค้า</a> <img src="image/right.png" width="35" height="35"> <img src="image/others.png" width="35" height="35"> อุปกรณ์เสริม</div>
<div class="panel-body">
    <a class="btn btn-info" href="OtherAdd">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead>
                <tr>
                    <th><center>ลำดับ</center></th>
           <!-- <th>รหัส</th>-->
            <th>ประเภท</th>
            <th>รุ่น</th>
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
                <s:iterator value="otherList" var="otherRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                       <!-- <td>$otherRow.other_id}</td>-->
                        <td>${otherRow.otherTypeModel.other_type}</td>
                        <td>${otherRow.other}</td>
                        <td>${otherRow.image}</td>
                        <td>${otherRow.price_buy}</td>
                        <td>${otherRow.price_sale}</td>
                        <td>${otherRow.unitModel.unit}</td>
                        <td>${otherRow.quantity}</td>
                        <!--<td>${otherRow.date}</td>-->
                        <td colspan="2">  
                            <a class="btn btn-info" href="OtherEdit?other_id=${otherRow.other_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="OtherDelete?other_id=${otherRow.other_id}" >
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