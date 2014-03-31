<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/cart.png" width="35" height="35"> ขาย</div>
<div class="panel-body">
     <table>
        <tr>
            <td><a class="btn btn-info" href="SaleMobileIndex">
                    <img src="image/mobile.png" width="26" height="26"> โทรศัพท์
                </a></td>
            <td><a class="btn btn-info" href="SaleSimIndex">
                    <img src="image/sim.png" width="26" height="26"> ซิมการ์ด
                </a></a></td>
            <td><a class="btn btn-info" href="SaleOtherIndex">
                    <img src="image/others.png" width="26" height="26"> อุปกรณ์เสริม
                </a></td>
            <td>&nbsp;&nbsp;</td>
            <td class="form-group has-success"><input type='text'  name="" placeholder="ระบุคำค้นหา" class="form-control" style="width: 140px;height: 40px;" /></td>
            <td>หรือ</td>
            <td class="form-group has-success"><input type='text' name="" placeholder="ราคาต่ำสุด" class="form-control" style="width: 90px;height: 40px;" /></td>
            <td>ถึง</td>
            <td class="form-group has-success"><input type='text'  name="" placeholder="ราคาสูงสุด" class="form-control" style="width: 90px;height: 40px;" /></td>
            <td><a type="button" href="SimTypeIndex" class="btn btn-success">
                    <img src="image/search.png" width=26" height="26"> ค้นหา
                </a>
            </td>
        </tr>
        <tr><td></td></tr>
    </table>
    <div class="table-responsive" style="height:500px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive">
            <thead>
                <tr>
                    <th><center>รายการ</center></th>
            <th><center>ชื่อสินค้า</center></th>
            <th><center>รูปภาพ</center></th>
            <th><center>ราคา</center></th>
            <th><center>จำนวน</center></th>
            <th><center>คงเหลือ</center></th>
            </tr>
            </thead>
            <tbody>
                <s:iterator value="otherList" var="otherRow">
                    <tr style="vertical-align: middle">
                        <td align="center" style="vertical-align: middle "><input type = "checkbox" id="select" name="select" value =""></td>
                        <td style="vertical-align: middle ">${otherRow.otherTypeModel.other_type} ${otherRow.other}</td>
                        <td style="vertical-align: middle "><center><img src="${otherRow.image}" width="36px" height="36px"></center></td>
                <td align="center" style="vertical-align: middle ">${otherRow.price_sale}</td>
                <td align="center" style="vertical-align: middle ;width: 100px;" class="form-group has-success">
                    <input type='text' style="text-align: center" name="quantity" value="1" class="form-control" style="width: 100px;" />
                </td>
                <td align="center" style="vertical-align: middle ">${otherRow.quantity}</td>
                </tr>
            </s:iterator>
            </tbody>
        </table>
    </div>
</div>