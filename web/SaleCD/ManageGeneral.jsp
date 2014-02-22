
<%@page import="java.util.ArrayList"%>
<%@page import="SaleCD.action.ManageGeneralAction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("#cmd_header").click(function() {
            $.ajax({
                url: "<s:url action='HeaderSave'/>",
                type: "post",
                data: $("#form_header").serialize(),
                success: function(result) {
                    alert(result);
                    bindManageGeneral();
                },
                error: function(e) {
                    alert(e);
                    bindManageGeneral();
                }
            });
            function bindManageGeneral() {
                $("#showManageGeneral").load("ManageGeneralIndex");
            }
        });
    });
</script>
<style>
    .form-control {
        color:blue!important;
    }
</style>
<s:hidden id = "user_id" name="user_id" />
<div class = "panel-heading" style = "font-weight: bold" ><span class="glyphicon glyphicon-adjust"></span> ตั้งค่าทั่วไป </div>

<div class = "panel-body"  id="showManageGeneral">
    <div class="bs-example">
        <div class="panel-group" id="accordion" >
            <s:form theme="simple" id="form_header">
                <div class="panel panel-default"  >
                    <div class="panel-heading" >
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">ตั้งค่าส่วนหัว</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <table  width="100%">
                            <tr>
                                <td>
                                    <s:hidden id = "header_id" name="headerModel.header_id" /><br/>
                                </td>
                            </tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                    <s:select cssClass="form-control" name="headerModel.shows" list="listShow"  style="height: 40px" />
                                </td>
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
                            </tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_size" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ความหนาฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_weight" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์ : </s:label>
                                    <s:textfield name="headerModel.header_font_color" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง : </s:label>
                                    <s:textfield name="headerModel.header_background_color" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                    <s:textfield name="headerModel.header_border_color" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                </td> 
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ความหนาเส้นขอบ : </s:label>
                                    <s:textfield name="headerModel.header_border_weight" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="30px">&nbsp;</td>
                                <td class="form-group has-success">
                                    <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                    <s:textfield name="headerModel.header_border_style" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                </td> 
                                <td width="30px">&nbsp;</td>
                            </tr>
                            <tr><td><br/></td></tr>
                        </table>
                        <table align="center">
                            <tr><td><br/></td></tr>
                            <tr>
                                <td align="center">
                                    <s:submit type="button" id="cmd_header" cssClass="btn btn-default" theme="simple" label="">
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
                    </div>
                </div>
            </s:form>
            <s:form action="MainMenuSave" theme="simple" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">ตั้งค่าเมนูหลัก</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table  width="100%">
                                <tr>
                                    <td>
                                        <s:hidden name="mainMenuModel.main_menu_id" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                        <s:select cssClass="form-control" name="mainMenuModel.shows" list="listShow"  style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="mainMenuModel.font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="mainMenuModel.font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="mainMenuModel.font_size_header" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(รายละเอียด) </s:label>
                                        <s:textfield name="mainMenuModel.font_size_detail" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(หัวข้อ) : </s:label>
                                        <s:textfield name="mainMenuModel.font_weight_header" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td>  
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(รายละเอียด) : </s:label>
                                        <s:textfield name="mainMenuModel.font_weight_detail" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="mainMenuModel.font_color_header" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(รายละเอียด) : </s:label>
                                        <s:textfield name="mainMenuModel.font_color_detail" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(หัวข้อ) : </s:label>
                                        <s:textfield name="mainMenuModel.background_color_header" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(รายละเอียด) : </s:label>
                                        <s:textfield name="mainMenuModel.background_color_detail" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                        <s:textfield name="mainMenuModel.border_color" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความเส้นขอบ : </s:label>
                                        <s:textfield name="mainMenuModel.border_weight" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="mainMenuModel.border_style" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
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
                        </div>
                    </div>
                </div>
            </s:form>
            <s:form action="OtherMenuSave" theme="simple" >               
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">ตั้งค่าเมนูอื่นๆ</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table  width="100%">
                                <tr><td><s:hidden name="otherMenuModel.other_menu_id" /></td></tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                        <s:select cssClass="form-control" name="otherMenuModel.shows" list="listShow"  style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="otherMenuModel.font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="otherMenuModel.font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="otherMenuModel.font_size_header" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(รายละเอียด) </s:label>
                                        <s:textfield name="otherMenuModel.font_size_detail" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(หัวข้อ) : </s:label>
                                        <s:textfield name="otherMenuModel.font_weight_header" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(รายละเอียด) : </s:label>
                                        <s:textfield name="otherMenuModel.font_weight_detail" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="otherMenuModel.font_color_header" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(รายละเอียด) : </s:label>
                                        <s:textfield name="otherMenuModel.font_color_detail" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(หัวข้อ) : </s:label>
                                        <s:textfield name="otherMenuModel.background_color_header" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(รายละเอียด) : </s:label>
                                        <s:textfield name="otherMenuModel.background_color_detail" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                        <s:textfield name="otherMenuModel.border_color" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความเส้นขอบ : </s:label>
                                        <s:textfield name="otherMenuModel.border_weight" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="otherMenuModel.border_style" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
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
                        </div>
                    </div>
                </div>
            </s:form>
            <s:form action="UserMenuSave" theme="simple" >              
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">ตั้งค่าผู้ใช้งาน</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table  width="100%">
                                <tr>
                                    <td>
                                        <s:hidden name="userMenuModel.user_menu_id" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                        <s:select cssClass="form-control" name="userMenuModel.shows" list="listShow"  style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="userMenuModel.font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="userMenuModel.font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="userMenuModel.font_size_header" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(รายละเอียด) </s:label>
                                        <s:textfield name="userMenuModel.font_size_detail" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(หัวข้อ) : </s:label>
                                        <s:textfield name="userMenuModel.font_weight_header" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(รายละเอียด) : </s:label>
                                        <s:textfield name="userMenuModel.font_weight_detail" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="userMenuModel.font_color_header" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(รายละเอียด) : </s:label>
                                        <s:textfield name="userMenuModel.font_color_detail" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(หัวข้อ) : </s:label>
                                        <s:textfield name="userMenuModel.background_color_header" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(รายละเอียด) : </s:label>
                                        <s:textfield name="userMenuModel.background_color_detail" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                        <s:textfield name="userMenuModel.border_color" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความเส้นขอบ : </s:label>
                                        <s:textfield name="userMenuModel.border_weight" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="userMenuModel.border_style" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
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
                        </div>
                    </div>
                </div>
            </s:form>
            <s:form action="ContentMenuSave" theme="simple" >                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">ตั้งค่าเนื้อหา</a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table  width="100%">
                                <tr>
                                    <td>
                                        <s:hidden name="contentMenuModel.content_menu_id" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                        <s:select cssClass="form-control" name="contentMenuModel.shows" list="listShow"  style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="contentMenuModel.font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="contentMenuModel.font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="contentMenuModel.font_size_header" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์(รายละเอียด) </s:label>
                                        <s:textfield name="contentMenuModel.font_size_detail" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(หัวข้อ) : </s:label>
                                        <s:textfield name="contentMenuModel.font_weight_header" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนา(รายละเอียด) : </s:label>
                                        <s:textfield name="contentMenuModel.font_weight_detail" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(หัวข้อ) : </s:label>
                                        <s:textfield name="contentMenuModel.font_color_header" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์(รายละเอียด) : </s:label>
                                        <s:textfield name="contentMenuModel.font_color_detail" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(หัวข้อ) : </s:label>
                                        <s:textfield name="contentMenuModel.background_color_header" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง(รายละเอียด) : </s:label>
                                        <s:textfield name="contentMenuModel.background_color_detail" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                        <s:textfield name="contentMenuModel.border_color" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความเส้นขอบ : </s:label>
                                        <s:textfield name="contentMenuModel.border_weight" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="contentMenuModel.border_style" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
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
                        </div>
                    </div>
                </div>
            </s:form>
            <s:form action="FooterSave" theme="simple" >                  
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title" style="font-size: 15px">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">ตั้งค่าส่วนท้าย</a>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table  width="100%">
                                <tr><td><s:hidden name="footerModel.footer_id" /></td></tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">การเเสดง : </s:label>
                                        <s:select cssClass="form-control" name="footerModel.shows" list="listShow"  style="height: 40px" />
                                    </td>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ชื่อฟอนท์ : </s:label>
                                        <s:textfield name="footerModel.footer_font_name" id="inputSuccess1" cssClass="form-control" placeholder="ตัวอย่าง Tahoma,Arial เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะฟอนท์ : </s:label>
                                        <s:textfield name="footerModel.footer_font_style" cssClass="form-control" placeholder="ตัวอย่าง Normal,Italic เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ขนาดฟอนท์ : </s:label>
                                        <s:textfield name="footerModel.footer_font_size" cssClass="form-control" placeholder="ตัวอย่าง 15px,3em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนาฟอนท์ : </s:label>
                                        <s:textfield name="footerModel.footer_font_weight" cssClass="form-control" placeholder="ตัวอย่าง Normal,Bold เป็นต้น" style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีฟอนท์ : </s:label>
                                        <s:textfield name="footerModel.footer_font_color" cssClass="form-control" placeholder="ตัวอย่าง Green,#000 เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีพื้นหลัง : </s:label>
                                        <s:textfield name="footerModel.footer_background_color" cssClass="form-control" placeholder="ตัวอย่าง Pink,#00FA9A เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">สีเส้นขอบ : </s:label>
                                        <s:textfield name="footerModel.footer_border_color" placeholder="ตัวอย่าง Blue,33FFCC เป็นต้น" cssClass="form-control"  style="height: 40px"/>
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ความหนาเส้นขอบ : </s:label>
                                        <s:textfield name="footerModel.footer_border_weight" cssClass="form-control" placeholder="ตัวอย่าง 2px,1em เป็นต้น" style="height: 40px" />
                                    </td> 
                                    <td width="30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="30px">&nbsp;</td>
                                    <td class="form-group has-success">
                                        <s:label cssClass="control-label" for="inputSuccess1">ลักษณะเส้นขอบ : </s:label>
                                        <s:textfield name="footerModel.footer_border_style" cssClass="form-control" placeholder="ตัวอย่าง Solid,Dashed เป็นต้น" style="height: 40px" />
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
                        </div>
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>




