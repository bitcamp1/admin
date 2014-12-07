<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    


<div id="WzTtDiV" style="visibility: hidden; position: absolute; overflow: hidden; padding: 0px; width: 0px; left: 0px; top: 0px;"></div>
<script language="javascript" src="/script/wz_tooltip.js"></script>
<table cellpadding="0" cellspacing="0" width="660" align="center">
    <tbody><tr>
        <td height="10"></td>
    </tr>
</tbody></table>
<table width="660" align="center" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">배송상태</td>
		<td class="subtitle_etc"></td>
	</tr>
</tbody></table>
<table width="660" class="tp_form1" align="center">
	<tbody><tr height="30">
		<td class="list0"></td>
		<td class="list0" width="330">
		</td>
		<td class="formhead1">ㆍ현재상태</td>
		<td width="330" class="pdl7">
		    ☆ <b><span style="font-size:15px;color:#0000ff;">전산개통</span></b> ☆
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ소속</td>
		<td width="330" class="pdl7">
		    가온네트웍스[총판] / 가온[지사]
		</td>
		<td class="formhead1">ㆍ담당자</td>
		<td class="pdl7">
		    가온[팀] / 가온[상담원]
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ등록일자</td>
		<td width="330" class="pdl7">
		    2013-10-25
		</td>
		<td class="formhead1">ㆍ기존통신사</td>
		<td class="pdl7">
		    <span style="color:#ff0000;">SKT</span>
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ판매유형</td>
		<td class="pdl7">
		    <span style="color:rgb(0,0,0);">오프라인</span>
		</td>
		<td class="formhead1">ㆍ명의자</td>
		<td class="pdl7">
			김준혁
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ주민번호</td>
		<td class="pdl7">
			950721-1155531
		</td>
		<td class="formhead1">ㆍ휴대번호</td>
		<td class="pdl7">
		    010-4819-2635
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ신청모델</td>
		<td class="pdl7">
			<span style="color:#000000;">SHV-E300S_32G(갤4)</span>
		</td>
		<td class="formhead1">ㆍ가입유형</td>
		<td class="pdl7">
		    신규에이징
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ메모</td>
		<td colspan="3" class="pdl7">
		    
		</td>
	</tr>
</tbody></table>
<table cellpadding="0" cellspacing="0" width="660" align="center">
    <tbody><tr>
        <td align="center" height="10" style="font-size:15px;"></td>
    </tr>
</tbody></table>

<table width="660" class="tp_form1" align="center">
    <form name="stateFrm"></form>
    <input type="hidden" name="prgid" value="C5802">
    <input type="hidden" name="uIDX" value="WKRM92069844">
    <input type="hidden" name="oldState" value="111">
    <input type="hidden" name="mCode" value="1025">
    <input type="hidden" name="oldopenerCode" value="WKRE90907790">
    <tbody><tr height="30">
		<td class="formhead1">ㆍ배송상태</td>
		<td colspan="3" class="pdl7">
			<input type="text" name="deliveryDate" class="textarea imed" onblur="numberCheck(this);" maxlength="8" style="width:60px;" value="20131025">
			<input type="radio" name="DeliveryState" value="114" id="DeliveryState_114"><span style="color:#3366ff;"><label for="DeliveryState_114">배송중</label></span>&nbsp;&nbsp;
<input type="radio" name="DeliveryState" value="120" id="DeliveryState_120"><span style="color:#0000ff;"><label for="DeliveryState_120">배송완료</label></span>&nbsp;&nbsp;
<input type="radio" name="DeliveryState" value="128" id="DeliveryState_128"><span style="color:#000000;"><label for="DeliveryState_128">반품완료</label></span>&nbsp;&nbsp;

		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ택배사</td>
		<td width="330" class="pdl7">
		    <select name="DeliveryCode">
            <option value="">::택배사::</option>
            <option value="10">우체국</option>
<option value="11">퀵</option>
</select>
		</td>
		<td class="formhead1">ㆍ운송장</td>
		<td width="330" class="pdl7">
		    <input type="text" name="DeliveryNumber" value="" class="textarea imed w100" onblur="numberCheck(this);">
		    <input type="button" value=" 변경 " style="width:80px;height:20px;font-weight:bold;" class="button03 cshand" onclick="checkMemsubmit('C5805');">
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ개통처</td>
		<td width="330" class="pdl7">
		
		    <select name="openerCode">
            <option value="">::선택::</option>
            <option value="WKRE90907790" selected="">S코드</option>
<option value="WKRE90907791">Y코드</option>

            </select><input type="button" value=" 변경 " style="width:80px;height:20px;font-weight:bold;" class="button04 cshand" onclick="checkMemsubmit('C5807');">
            
		</td>
		<td class="formhead1">ㆍ유심번호</td>
		<td width="330" class="pdl7">
		    <select name="usimCode">
            <option value="">::선택::</option>
            <option value="1001">없음</option>
<option value="1002">면제(차감)</option>
<option value="1003" selected="">후납(고객)</option>
</select><input type="text" name="usimNumber" value="1209101834378" class="input_text imed w100">
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ일련번호</td>
		<td width="330" class="pdl7">
		    <input type="text" name="serialNumber" value="742500" class="input_text imed w100">
		</td>
		<td class="formhead1">ㆍ메모</td>
		<td class="pdl7">
			<input type="text" name="Memos" class="input_text imea w150">
		</td>
	</tr>
	
</tbody></table>

<table cellpadding="0" cellspacing="0" align="center" width="660" height="65">
    <tbody><tr>
        <td valign="middle" align="right">
        
            <input type="button" value=" 저 장 " style="width:80px;height:30px;font-weight:bold;" class="button06 cshand" onclick="checkMemsubmit('C5802');">&nbsp;
        
            <input type="button" value=" 닫기 " style="width:80px;height:30px;" class="button07 cshand" onclick="self.close();">
        </td>
    </tr>
</tbody></table>

<table cellpadding="0" cellspacing="0" width="660" align="center">
    <tbody><tr>
        <td height="20"></td>
    </tr>
</tbody></table>



<iframe width="100%" height="100%" name="dummyMain" id="dummyMain" src="about:blank" style="display:none;"></iframe>
<iframe width="0" height="0" border="0" frameborder="0" src="/lib/session_update.asp" style="display:none;"></iframe>
<script id="hiddenlpsubmitdiv" style="display: none;"></script><script>try{for(var lastpass_iter=0; lastpass_iter < document.forms.length; lastpass_iter++){ var lastpass_f = document.forms[lastpass_iter]; if(typeof(lastpass_f.lpsubmitorig2)=="undefined"){ lastpass_f.lpsubmitorig2 = lastpass_f.submit; lastpass_f.submit = function(){ var form=this; var customEvent = document.createEvent("Event"); customEvent.initEvent("lpCustomEvent", true, true); var d = document.getElementById("hiddenlpsubmitdiv"); for(var i = 0; i < document.forms.length; i++){ if(document.forms[i]==form){ d.innerText=i; } } d.dispatchEvent(customEvent); form.lpsubmitorig2(); } } }}catch(e){}</script></body>