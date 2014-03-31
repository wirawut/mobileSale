<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<style>
    .achievements-wrapper { height: 304px; overflow: auto; }

</style>
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

    <div class="span3 achievements-wrapper">
        <s:form action="SaleMobileSaveMemory" theme="simple">
            <table class="table table-hover table-bordered table-striped table-responsive">
                <thead style="vertical-align: middle ; background-color: #2aabd2;color: white;">
                    <tr>
                        <th width="10%"><center>รายการ</center></th>
                <th width="10%"><center>รหัส</center></th>
                <th width="30%"><center>ชื่อสินค้า</center></th>
                <th width="15%"><center>รูปภาพ</center></th>
                <th width="15%"><center>ราคา</center></th>
                <th width="10%"><center>จำนวน</center></th>
                <th width="10%"><center>คงเหลือ</center></th>
                </tr>
                </thead>
                <tbody>
                    <s:iterator value="mobileList" var="mobileRow">
                        <tr style="vertical-align: middle">
                            <td width="10%" align="center" style="vertical-align: middle "><s:checkbox  name="select" fieldValue='%{#mobileRow.mobile_id}' /></td>
                            <td width="10%" align="center" style="vertical-align: middle ">PM${mobileRow.mobile_id}</td>
                            <td width="30%" style="vertical-align: middle ">${mobileRow.mobileTypeModel.mobile_type} ${mobileRow.mobile}</td>
                            <td width="15%"  style="vertical-align: middle "><center><img src="${mobileRow.image}" width="36px" height="36px"></center></td>
                    <td width="15%" align="center" style="vertical-align: middle ">${mobileRow.price_sale}</td>
                    <td width="10%"  align="center" style="vertical-align: middle ;width: 100px;" class="form-group has-success">
                        <s:textfield  cssStyle="text-align: center ; width: 80px;" name="quantity" value="1" cssClass="form-control"  />
                    </td>
                    <td width="10%" align="center" style="vertical-align: middle ">${mobileRow.quantity}</td>
                    </tr>
                </s:iterator>
                </tbody>
            </table>
        </div>
        <table>
            <tr><td></td></tr>
            <tr>
                <td>
                    <s:submit type="button" cssClass="btn btn-success" >
                        <img src="image/addcart.png" width="26" height="26"> เพิ่มสินค้า
                    </s:submit>
                </td>
                <td>
                    <a class="btn btn-warning" href="SaleMobileDeleteAllMemory">
                        <img src="image/removecart.png" width="26" height="26"> ล้างสินค้า
                    </a>
                </td>
            </tr>
            <tr><td></td></tr>
        </table>
    </s:form>

    <s:form action="MobileSave" theme="simple">
            <table class="table table-hover table-bordered table-striped table-responsive">
        <thead style="vertical-align: middle ; background-color: #2aabd2;color: white;">
            <tr>
                <th width="10%"><center>ลำดับ</center></th>
        <th width="10%"><center>รหัส</center></th>
        <th width="30%"><center>ชื่อสินค้า</center></th>
        <th width="15%"><center>ราคา</center></th>
        <th width="10%"><center>จำนวน</center></th>
        <th width="10%"><center>รวม</center></th>
        </tr>
        </thead>
        <tbody>
            <%int i = 1;%>
            <s:iterator value="mobileMemoryList" var="mobileMemoryRow" >
                <tr style="vertical-align: middle">
                    <td width="10%" align="center" style="vertical-align: middle "><%out.print(i);%></td>
                    <td width="10%" align="center" style="vertical-align: middle ">PM${mobileMemoryRow.mobile_id}</td>
                    <td width="30%" style="vertical-align: middle ">${mobileMemoryRow.mobileTypeModel.mobile_type} ${mobileMemoryRow.mobile}</td>
                    <td width="15%" align="center" style="vertical-align: middle ">${mobileMemoryRow.price_sale}</td>
                    <td width="10%" align="center" style="vertical-align: middle "><s:property value="numberList[0]"/></td>
                    <td width="10%" align="center" style="vertical-align: middle "><s:property value="sumList[0]"/></td>
                </tr>
                 <% i++;%>
            </s:iterator>
        </tbody>
    </table>
        <table width="100%" align="center">
            <tr>
                <td width="15%" align="right">เลขที่ขาย : </td>
                <td width="15%" class="form-group has-success">
                    <s:textfield name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />
                </td>
                <td width="15%" align="right">รหัสลูกค้า : </td>
                <td width="15%" class="form-group has-success">
                    <s:textfield name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />
                </td>
                <td width="15%" align="right">อัตราภาษี(%) : </td>
                <td width="15%" class="form-group has-success">
                    <s:textfield name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />
                </td>

                <s:hidden name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />
                <s:hidden name="mobileModel.mobile" cssClass="form-control" cssStyle="height: 40px;" />

                <td>&nbsp;</td>
                <td style="margin-left: 200px;">
                    <s:submit type="button" cssClass="btn btn-primary" >
                        <img src="image/sale.png" width="26px" height="26px"> ขายเเละปริ้นใบเสร็จ
                    </s:submit>
                </td>
            </tr>
            <tr><td></td></tr>
        </table>
    </s:form>
</div>