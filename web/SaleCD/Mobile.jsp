<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/product.png" width="35" height="35"><a href="ProductIndex"> คลังสินค้า</a> <img src="image/right.png" width="35" height="35"><img src="image/mobile.png" width="35" height="35"> โทรศัพท์</div>
<div class="panel-body">
    <a class="btn btn-info" href="MobileAdd">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead>
                <tr>
                    <th><center>ลำดับ</center></th>
           <!-- <th>รหัส</th>-->
            <th>ยี่ห้อ</th>
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
                <s:iterator value="mobileList" var="mobileRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                       <!-- <td>${mobileRow.mobile_id}</td>-->
                        <td>${mobileRow.mobileTypeModel.mobile_type}</td>
                        <td>${mobileRow.mobile}</td>
                        <td>${mobileRow.image}</td>
                        <td>${mobileRow.price_buy}</td>
                        <td>${mobileRow.price_sale}</td>
                        <td>${mobileRow.unitModel.unit}</td>
                        <td>${mobileRow.quantity}</td>
                        <!--<td>${mobileRow.date}</td>-->
                        <td colspan="2">  
                            <a class="btn btn-info" href="MobileEdit?mobile_id=${mobileRow.mobile_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="MobileDelete?mobile_id=${mobileRow.mobile_id}" >
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