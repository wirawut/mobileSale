<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<table>
    <tr>
        <td width="170px" align="right">ชื่อบริษัท : &nbsp; </td>
        <td><form class="pure-form"><input type="text" placeholder="ระบุชื่อบริษัท" required></form></td>
    </tr>
     <tr><td></td></tr>
    <tr>
        <td align="right">ที่อยู่ : &nbsp;</td>
        <td><form class="pure-form"><input type="text" placeholder="ระบุที่อยู่" required></form></td>
    </tr>
     <tr><td></td></tr>
    <tr>
        <td align="right">เบอร์โทร : &nbsp;</td>
        <td><form class="pure-form"><input type="text" placeholder="ระบุเบอร์โทร" required></form></td>
    </tr>
    <tr>
        <td align="right">แฟกซ์ : &nbsp;</td>
        <td><form class="pure-form"><input type="text" placeholder="ระบุแฟกซ์" required></form></td>
    </tr>
     <tr><td></td></tr>
    <tr>
        <td align="right">เลขประจำตัวผู้เสียภาษี : &nbsp;</td>
        <td><form class="pure-form"><input type="text" placeholder="ระบุเลขประจำตัวผู้เสียภาษี" required></form></td>
    </tr>
     <tr><td></td></tr>
    <tr>
        <td align="right">วันที่บันทึก : &nbsp;</td>
        <td><form class="pure-form"><input type="text" placeholder="เลือกวันที่วันที่บันทึก" required></form></td>
    </tr>
    <tr><td><br/></td></tr>
    <tr>
        <td colspan="2" >
            <a class="btn btn-info" href="companySave?id=${companyRow.company_id}" style="width: 60px ; margin-left: 172px">
                <i class="icon-shopping-cart icon-large"></i>
                บันทึก
            </a>
            <a class="btn btn-info" href="companyCancel?id=${companyRow.company_id}" style="width: 60px">
                <i class="icon-shopping-cart icon-large"></i>
                ยกเลิก
            </a>
        </td>
    </tr>
</table> 
<br>
<table class="table" width="100%" style="font: 16px TH Saraban new;">

    <thead >
        <tr style="font: 16px TH Saraban new;">
            <th>ชื่อบริษัท</th>
            <th>ที่อยู่</th>
            <th>เบอร์โทร</th>
            <th>แฟกซ์</th>
            <th>เลขประจำตัวผู้เสียภาษี</th>
            <th>วันที่บันทึก</th>
            <th></th>
    
        </tr>
    </thead>
    <tbody>
        <s:iterator value="companyList" var="companyRow">
            <tr>
                <td>${companyRow.company_name}</td>
                <td>${companyRow.company_address}</td>
                <td>${companyRow.tel}</td>
                <td>${companyRow.fax}</td>
                <td>${companyRow.tax_number}</td>
                <td>${companyRow.date}</td>
                <td colspan="2">  
                    <a href="companyDelete?id=${companyRow.company_id}" class="btn btn-info" >แก้ไข</a>
                    <a class="pure-button pure-button-large pure-button-error" href="companyDelete?id=${companyRow.company_id}" style="width: 60px">
                        <i class="icon-shopping-cart icon-large"></i>
                        ลบ
                    </a>
                </td>
            </tr>
        </s:iterator>
    </tbody>
</table>

