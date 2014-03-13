<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"> <img src="image/manageBasic.png" width="35" height="35"> <a href="HomeIndex" > ตั้งค่าพื้นฐาน </a> <img src="image/right.png" width="35" height="35"> <img src="image/product_type.png" width="35" height="35"> <a href="ProductTypeIndex" > ประเภทสินค้า </a> <img src="image/right.png" width="35" height="35"> <img src="image/sim.png" width="35" height="35"> ซิมการ์ด</div>
<div class="panel-body">
    <a class="btn btn-info" href="SimTypeAdd">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead >
                <tr>
                 <th width="2%"><center>ลำดับ</center></th>
            <th width="17%">เครือข่าย</th>
            <th width="40%">รายละเอียด</th>
            <th width="14%">วันที่บันทึก</th>
            <th width="27%"></th>
            </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="simTypeList" var="simTypeRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                        <td>${simTypeRow.sim_type}</td>
                        <td>${simTypeRow.detail}</td>
                        <td>${simTypeRow.date}</td>
                        <td colspan="2">  
                            <a class="btn btn-info" href="SimTypeEdit?sim_type_id=${simTypeRow.sim_type_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="SimTypeDelete?sim_type_id=${simTypeRow.sim_type_id}" >
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