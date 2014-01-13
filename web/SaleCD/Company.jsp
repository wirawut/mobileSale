<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

        <table class="bordertable narrow">

            <thead>
                <tr>
                    <th>ชื่อบริษัท</th>
                    <th>ที่อยู่</th>
                    <th>เบอร์โทร</th>
                    <th>แฟกซ์</th>
                    <th>เลขประจำตัวผู้เสียภาษี</th>
                    <th>วันที่บันทึก</th>
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
                    </tr>
                </s:iterator>

            </tbody>
        </table>

