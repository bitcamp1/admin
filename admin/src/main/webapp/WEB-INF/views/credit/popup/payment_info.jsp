<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table cellpadding="0" cellspacing="0" width="620" class="tp_form1">
                <tbody><tr>
                    <td height="25" valign="middle" class="addhead">ㆍ납부방법</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="radio" name="bankMethod" value="bank" onclick="chkView();">자동이체&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="card" onclick="chkView();">신용카드&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="giro" onclick="chkView();">지로
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ예금주</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankUser" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.bankSocno2.focus();}"> -
			            <input type="text" name="bankSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.bankName.focus();}">
                    </td>
                </tr>
                <tr id="trView1">
                    <td height="25" valign="middle" class="addhead">ㆍ<span id="bNameView1">은행명</span><span id="bNameView2" style="display:none;">카드명</span></td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankName" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ<span id="bNumView1">계좌번호</span><span id="bNumView2" style="display:none;">카드번호</span></td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankNumber" value="" class="input_text imed" size="25">
                    </td>
                </tr>
                <tr id="trView2">
                    <td height="25" valign="middle" class="addhead">ㆍ유효기간</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="bankYear" value="" id="bYView" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.bankYear.focus();}">년 /
                        <input type="text" name="bankMonth" value="" id="bMView" class="input_text imed" size="2" maxlength="2" onblur="numberCheck(this);">월
                    </td>
                </tr>
            </tbody></table>