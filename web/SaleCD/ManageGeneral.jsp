
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>


<div class = "panel-heading" style = "font-weight: bold" ><span class="glyphicon glyphicon-adjust"></span> ตั้งค่าทั่วไป </div>
<div class = "panel-body" >
    <div class="bs-example">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">ตั้งค่าส่วนหัว</a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <table  width="100%">
                        <tr><td><br/></td></tr>
                        <tr>
                            <td width="30px">&nbsp;</td>
                            <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                            <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                        </tr>
                        <tr><td><br/></td></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="right">&nbsp;ขนาดฟอนท์ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                            <td align="right">&nbsp;ความหนาฟอนท์ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                        </tr>
                        <tr><td><br/></td></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="right">&nbsp;สีฟอนท์ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                            <td align="right">&nbsp;พื้นหลัง : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                        </tr>
                        <tr><td><br/></td></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="right">&nbsp;สีเส้นขอบ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                            <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                        </tr>
                        <tr><td><br/></td></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                            <td>
                                <input type="text" class="form-control" >
                            </td>
                        </tr>
                        <tr><td><br/></td></tr>
                    </table>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">ตั้งค่าเมนูหลัก</a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td></td><td align='right'>&nbsp;การแสดง : </td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsMainMenu" id="showsMainMenu" value="option1" checked>
                                        เเสดง
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsMainMenu" id="showsMainMenu" value="option2">
                                        ซ่อน
                                    </label>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ขนาดฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ขนาดฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ความหนาฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีพื้นหลัง(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีพื้นหลัง(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">ตั้งค่าเมนูอื่นๆ</a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td></td><td align='right'>&nbsp;การแสดง : </td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsOtherMenu" id="showsOtherMenu" value="option1" checked>
                                        เเสดง
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsOtherMenu" id="showsOtherMenu" value="option2">
                                        ซ่อน
                                    </label>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ขนาดฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ขนาดฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ความหนาฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีพื้นหลัง(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีพื้นหลัง(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">ตั้งค่าผู้ใช้งาน</a>
                    </h4>
                </div>
                <div id="collapseFour" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td></td><td align='right'>&nbsp;การแสดง : </td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsUserMenu" id="showUserMenu" value="option1" checked>
                                        เเสดง
                                        <label class="radio-inline">
                                            <input type="radio" name="showsUserMenu" id="showUserMenu" value="option2">
                                            ซ่อน
                                        </label>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ขนาดฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ขนาดฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ความหนาฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีพื้นหลัง(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีพื้นหลัง(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">ตั้งค่าเนื้อหา</a>
                    </h4>
                </div>
                <div id="collapseFive" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td></td><td align='right'>&nbsp;การแสดง : </td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsContentMenu" id="showsContentMenu" value="option1" >
                                        เเสดง
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="showsContentMenu" id="showsContentMenu" value="option2">
                                        ซ่อน
                                    </label>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ขนาดฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ขนาดฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ความหนาฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีฟอนท์(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีฟอนท์(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีพื้นหลัง(หัวข้อ) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;สีพื้นหลัง(รายละเอียด) : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">ตั้งค่าส่วนท้าย</a>
                    </h4>
                </div>
                <div id="collapseSix" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table  width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td align="right">&nbsp;ชื่อฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ลักษณะฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ขนาดฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีฟอนท์ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;พื้นหลัง : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;สีเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                                <td align="right">&nbsp;ความหนาเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="right">&nbsp;ลักษณะเส้นขอบ : </td>
                                <td>
                                    <input type="text" class="form-control" >
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="table-responsive" style=" height: 550px; overflow: auto;">
        <table class="table table-hover table-bordered" >
            <thead >
                <tr>
                    <th>ลำดับ</th>
                    <th>ชื่อฟอนท์header</th>
                     <th>ชื่อฟอนท์footer</th>
                      <th>ความหนาตัวอักษรmain menu</th>
                       <th>สีพื้นหลัง other menu</th>
                    <th>ชื่อ</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%int i = 1;%>
                <s:iterator value="manageGeneralList" var="manageGeneralRow">
                    <tr>
                         <td><%out.print(i);%></td>
                         <td>${manageGeneralRow.headerModel.header_font_name}</td>
                         <td>${manageGeneralRow.footerModel.footer_font_name}</td>
                         <td>${manageGeneralRow.mainMenuModel.font_weight_detail}</td>
                         <td>${manageGeneralRow.otherMenuModel.background_color_detail}</td>
                        <td>${manageGeneralRow.fname}</td>
                    </tr>
                    <% i++;%>
                </s:iterator>
            </tbody>
        </table>
    </div>
