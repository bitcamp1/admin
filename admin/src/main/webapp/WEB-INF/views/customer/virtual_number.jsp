<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
 <table width="100%" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">가상번호</td>
            	</tr>
            </tbody></table>
            <input type="text" style="display:none;"><table width="100%" cellpadding="0" cellspacing="0" height="30" class="pdt3 tp_form1">
            	<form name="sendSmsFrm"></form>
				<input type="hidden" name="goText" value="tempSend">
				<input type="hidden" name="prgid" value="tempTextSend">
				<input type="hidden" name="senderPhone" value="1688-9310">
				<input type="hidden" name="receiverPhone" value="010-4819-2635">
				<input type="hidden" name="txtMessage">
				<input type="hidden" name="uIDX" value="WKRM92069844">
				<input type="hidden" name="uName" value="김준혁">
				
                <tbody><tr>
                    <td valign="middle" class="pdl10">010 - 
                        <input type="text" name="cellTemp1" value="" id="cellTemp1" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);"> -
                        <input type="text" name="cellTemp2" value="" id="cellTemp2" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
                        <input type="button" value="등록" style="width:60px;height:20px;" onfocus="blur();" class="button06 cshand" onclick="sendTempSms();">
                        <input type="checkbox" name="chkTempSmsGo" value="Y" id="chkTempSmsGo_Y"><label for="chkTempSmsGo_Y" style="margin-right:10px;">발송</label>
                        <select name="tempText" onchange="sentTempText();">
                        <option value="사용중">사용중</option>
                        <option value="직접해지">직접해지</option>
                        <option value="수납해지">수납해지</option>
                        <option value="해지완료">해지완료</option>
                        </select>
                    </td>
                </tr>
                
            </tbody></table>