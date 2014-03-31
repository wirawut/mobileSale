<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<script>
    $(function() {

    });
</script>
<div class = "panel-heading" style="font-size:  ${manageGeneralRow.contentMenuModel.font_size_header}; font-family : ${manageGeneralRow.contentMenuModel.font_name}; font-style:  ${manageGeneralRow.contentMenuModel.font_style}; font-weight: ${manageGeneralRow.contentMenuModel.font_weight_header}; color: ${manageGeneralRow.contentMenuModel.font_color_header};background-color: ${manageGeneralRow.contentMenuModel.background_color_header};"><img src="image/home.png" width="35" height="35"><a href="HomeIndex" > หน้าหลัก </a> <img src="image/right.png" width="35" height="35"> <img src="image/cart.png" width="35" height="35"> ขาย</div>
<div class="panel-body">
    <a class="btn btn-info" href="#">โทรศัพท์
    </a>
    <a class="btn btn-info" href="#">ซิมการ์ด
    </a>
    <a class="btn btn-info" href="#">อุปกรณ์เสริม
    </a><br/><br/>
    <div class="table-responsive" style=" height: 370px; overflow: auto; ">
        <table class="table table-hover table-bordered table-striped table-responsive" >
            <thead>
                <tr>
                    <th><center>รายการ</center></th>
            <th><center>ยี่ห้อ</center></th>
            <th><center>รุ่น</center></th>
            <th><center>รูปภาพ</center></th>
            <th><center>ราคา</center></th>
            <th><center>จำนวน</center></th>
            <th>คงเหลือ</th>
            </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="" var="">
                    <tr>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>
                        <td align="center"><%out.print(i);%></td>

                    </tr>
                    <% i++;%>
                </s:iterator>
            </tbody>
        </table>
    </div>
</div>