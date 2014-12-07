<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table width="620" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">신청자정보</td>
            		<td align="left" valign="bottom" class="pdt3"><input type="checkbox" name="chkApp" value="1" onclick="changeName();" id="chkApp_1"><label for="chkApp_1">명의자와 동일</label></td>
            		<td align="left" valign="bottom" class="pdt3"><input type="checkbox" name="chkLegal" value="1">법정대리인</td>
            	</tr>
            </tbody></table>    
<table cellpadding="0" cellspacing="0" width="620" class="tp_form1">

                <tbody><tr>
                    <td height="25" valign="middle" class="addhead">ㆍ신청자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="appName" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="appSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.appSocno2.focus();}"> -
			            <input type="text" name="appSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.chkBank[0].focus();}">
                    </td>
                </tr>
            </tbody></table>