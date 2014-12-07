<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table width="99%" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">휴대폰정보</td>
            	</tr>
            </tbody></table>

    

            <table cellpadding="0" cellspacing="0" width="99%">
                <tbody><tr>
                    <td height="62" align="left" valign="bottom" class="pdt3">
                        <span name="skLogo" id="skLogo" style="display:none;"><img src="/images/skLogo.gif" border="0"></span>
            		    <span name="ktLogo" id="ktLogo" style="display:none;"><img src="/images/ktLogo.gif" border="0"></span>
            		    <span name="lgLogo" id="lgLogo" style="display:none;"><img src="/images/lgLogo.gif" border="0"></span>
                    </td>
                </tr>
            </tbody></table>
            <table width="99%" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">휴대폰정보</td>
            	</tr>
            </tbody></table>
            <input type="hidden" id="opcode" name="opcode" value="WKRE90907790">
            <table cellpadding="0" cellspacing="0" width="99%">
                <tbody><tr>
                    <td height="25" valign="middle">
                    <input type="radio" name="TongSinView" value="C11" onclick="radio_ImgView('C11');">SKT &nbsp;<input type="radio" name="TongSinView" value="C12" onclick="radio_ImgView('C12');">KT &nbsp;<input type="radio" name="TongSinView" value="C13" onclick="radio_ImgView('C13');">LG &nbsp;
                    </td>
                </tr>
            </tbody></table>
            <table cellpadding="0" cellspacing="0" width="99%" class="tp_form1">
                <tbody><tr>
                    <td height="25" valign="middle" class="addhead">ㆍ신청모델</td>
                    <td valign="middle" class="pdl7">
                        <select name="modelCode" onchange="chgModelCode();">
                		<option value="">::모델별::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ출고색상</td>
                    <td valign="middle" class="pdl7">
                		<select name="colorCode">
                		<option value="">::색상::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ가입유형</td>
                    <td valign="middle" class="pdl7">
                        <select name="gaimCode" onchange="chgOpenReset();">
                		<option value="">::가입유형::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ요금제</td>
                    <td valign="middle" class="pdl7">
                		<select name="feeCode" onchange="chgMoney();">
                		<option value="">::요금제::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ할인유형</td>
                    <td valign="middle" class="pdl7">
                		<select name="bugaCode">
                		<option value="">::부가::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ부가서비스</td>
                    <td valign="middle" class="pdl7">
                		<select name="bugaCode2">
                		<option value="">::부가2::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ가입비</td>
                    <td valign="middle" class="pdl7">
                        <select name="costCode">
                		<option value="">::가입비::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ구)단말기</td>
                    <td valign="middle" class="pdl7">
                		<select name="guCellphone">
                		<option value="">::구)단말기::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ유심카드</td>
                    <td valign="middle" class="pdl7">
                		<select name="usimCode">
                		<option value="">::유심카드::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ약정사항</td>
                    <td valign="middle" class="pdl7">
                		<select name="contractCode">
                		<option value="">::약정사항::</option>
                		<option value="1001">24개월할부</option>
<option value="1002">30개월할부</option>
<option value="1003">36개월할부</option>

                		</select>
                		
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍUSIM번호</td>
                    <td valign="middle" colspan="3" class="pdl7">
                		<input type="text" name="usimNumber" value="" size="10" maxlength="20" class="input_text imed">
                    </td>
                </tr>
                <tr id="openTR" style="display:;">
                    <td height="25" valign="middle" class="addhead">ㆍ개통번호(HP)</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="openingCell1" value="010" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);"> -
			            <input type="text" name="openingCell2" value="6329" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);"> -
			            <input type="text" name="openingCell3" value="7384" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ개통일련번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="serialNumber" value="" size="10" maxlength="20" class="input_text imed">
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ할부금액</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="feeMoney" value="" size="10" maxlength="20" class="input_text imed" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr id="hopeTR" style="display:none;">
                    <td height="25" valign="middle" class="addhead">ㆍ희망번호</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="hopeCell1" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
			            <input type="text" name="hopeCell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
			            <input type="text" name="hopeCell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ인증방법</td>
                    <td valign="middle" class="pdl7">
                		<select name="cerCode">
                		<option value="">::인증방법::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ발급일자</td>
                    <td valign="middle" class="pdl7">
                		<input type="text" name="cerField" value="" size="10" maxlength="20" class="input_text">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍMNP인증</td>
                    <td valign="middle" class="pdl7">
                        <select name="mnpCode">
                		<option value="">::MNP인증::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ인증번호</td>
                    <td valign="middle" class="pdl7">
                		<input type="text" name="mnpField" value="" size="10" maxlength="20" class="input_text">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ고객사은품</td>
                    <td valign="middle" class="pdl7">
                        <select name="giftCode">
                		<option value="">::사은품::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ금액</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="giftAmount" value="" onblur="numberCheck(this);" maxlength="20" size="10" class="input_text imed">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ기타</td>
                    <td valign="middle" class="pdl7">
                        <select name="gitaCode">
                		<option value="">::기타::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ인증값</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="gitaAmount" value="" onblur="numberCheck(this);" maxlength="20" size="10" class="input_text imed">
                    </td>
                </tr>
                <tr>
                    <td valign="middle" class="addhead">ㆍ메모</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <textarea name="user_memo" class="textarea imea" style="width:98%;height:100px;"></textarea>
                    </td>
                </tr>
            </tbody></table>
        