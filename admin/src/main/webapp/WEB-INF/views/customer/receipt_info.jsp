<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table width="100%" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">고객수납현황</td>
            	</tr>
            </tbody></table>
            <input type="text" style="display:none;"><table width="100%" cellpadding="0" cellspacing="0" height="30" class="pdt3 tp_form1">
            	<form name="sendGiftSmsFrm"></form>
				<input type="hidden" name="goText" value="giftSend">
				<input type="hidden" name="senderPhone" value="1688-9310">
				<input type="hidden" name="receiverPhone" value="010-4819-2635">
				<input type="hidden" name="txtMessage">
				<input type="hidden" name="uIDX" value="WKRM92069844">
				<input type="hidden" name="uName" value="김준혁">
				
                <tbody><tr>
                    <td valign="middle" class="pdl10">요금수납</td>
                    <td valign="middle" class="pdl10">
                        <input type="text" name="giftMoney" value="" id="giftMoney" class="input_text imed" size="7" maxlength="7" onblur="numberCheck(this);">
                        <input type="button" value="등록" style="width:60px;height:20px;" onfocus="blur();" class="button06 cshand" onclick="sendGiftSms();">
                        <input type="checkbox" name="chkGiftSmsGo" value="Y" id="chkGiftSmsGo_Y"><label for="chkGiftSmsGo_Y">발송</label>
                    </td>
                </tr>
                
            </tbody></table>