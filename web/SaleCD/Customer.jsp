<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a><img src="image/right.png" width="35" height="35"> <img src="image/manageBasic.png" width="35" height="35"> <a href="ManageBasicIndex" > ตั้งค่าพื้นฐาน </a><img src="image/right.png" width="35" height="35"> <img src="image/level.png" width="35" height="35"> ระดับผู้ใช้งาน</div>
<div class="panel-body">
    <a class="btn btn-info" href="CustomerAdd">
        <img src="image/add.png" width="35" height="35"> เพิ่ม
    </a> <br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead>
                <tr>
                    <th><center>ลำดับ</center></th>
            <th>รหัส</th>
            <th>ชื่อ-สกุล</th>
            <th>เพศ</th>
            <th>รูปภาพ</th>
            <!--<th width="18%">อีเมล์</th>-->
            <th>เบอร์โทร</th>
            <th>วันที่บันทึก</th>
            <th></th>
            </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="customerList" var="customerRow">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                        <td>${customerRow.customer_id}</td>
                        <td>${customerRow.fname} ${customerRow.lname}</td>
                        <td>${customerRow.sex}</td>
                        <td>${customerRow.image}</td>
                        <!--<td>${customerRow.email}</td>-->
                        <td>${customerRow.tel}</td>
                        <td>${customerRow.date}</td>
                        <td colspan="2">  
                            <a class="btn btn-info" href="CustomerEdit?customer_id=${customerRow.customer_id}">
                                <img src="image/edit.png" width="35" height="35"> แก้ไข
                            </a>
                            <a class="btn btn-info" href="CustomerDelete?customer_id=${customerRow.customer_id}" >
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