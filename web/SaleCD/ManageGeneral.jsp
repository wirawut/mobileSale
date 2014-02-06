
<%@page import="java.util.ArrayList"%>
<%@page import="SaleCD.action.ManageGeneralAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<style>
    .form-control {
        color:blue!important;
        border-style: 
    }
</style>
<div class = "panel-heading" style = "font-weight: bold" ><span class="glyphicon glyphicon-adjust"></span> ตั้งค่าทั่วไป </div>
<div class = "panel-body" >
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <div class="panel panel-default" >
                <div class="panel-heading" >
                    <h4 class="panel-title" style="font-size: 15px">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">ตั้งค่าส่วนหัว</a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <s:form action="HeaderSave" theme="simple">
                        <table  width="100%">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_size" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ความหนาฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_weight" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="headerModel" for="inputSuccess1">สีฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_color" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง : </s:label>
                                    <s:textfield name="headerModel.header_background_color" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>

                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">สีเส้น : </s:label>
                                    <s:textfield name="headerModel.header_border_color" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ความหนาเส้นขอบ : </s:label>
                                    <s:textfield name="headerModel.header_border_weight" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                    <s:textfield name="headerModel.header_border_style" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>
                        </table>
                        <table align="center">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td align="center">
                                    <s:submit type="button" cssClass="btn btn-default" theme="simple" label="">
                                        <span class="glyphicon glyphicon-floppy-saved"></span> บันทึก
                                    </s:submit>
                                    &nbsp;
                                    <button type="button" class="btn btn-default">
                                        <span class="glyphicon glyphicon-floppy-remove"></span> ยกเลิก
                                    </button>
                                </td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                    </s:form>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title" style="font-size: 15px">
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
                    <h4 class="panel-title" style="font-size: 15px">
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
                    <h4 class="panel-title" style="font-size: 15px">
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
                    <h4 class="panel-title" style="font-size: 15px">
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
                    <h4 class="panel-title" style="font-size: 15px">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">ตั้งค่าส่วนท้าย</a>
                    </h4>
                </div>
                <div id="collapseSix" class="panel-collapse collapse">
                    <div class="panel-body">
                        <s:form action="gardenSave" theme="simple">
                            <table  width="100%">
                                <tr><td><br/></td></tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="gardenModel.name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนาฟอนท์ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้น : </s:label>
                                        <s:textfield name="gardenModel.name" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนาเส้นขอบ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="gardenModel.name" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                            </table>
                            <table align="center">
                                <tr><td><br/></td></tr>
                                <tr>
                                    <td align="center">
                                        <s:submit type="button" cssClass="btn btn-default" theme="simple" label="">
                                            <span class="glyphicon glyphicon-floppy-saved"></span> บันทึก
                                        </s:submit>
                                        &nbsp;
                                        <button type="button" class="btn btn-default">
                                            <span class="glyphicon glyphicon-floppy-remove"></span> ยกเลิก
                                        </button>
                                    </td>
                                </tr>
                                <tr><td><br/></td></tr>
                            </table>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<table align="center" border="1px">

</table>



