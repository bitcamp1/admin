<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table width="99%" align="center" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">신용조회기록</td>
		<td class="subtitle_etc"></td>
	</tr>
</tbody></table>

<table cellpadding="0" cellspacing="0" align="center" width="99%">
    <tbody><tr>
        <td valign="top" height="65">
            <table width="620">
            	<tbody><tr height="30">
            		<td valign="middle" style="padding-top:10px;padding-left:5px;">위약금 14,430/잔여 19개월 495.248</td>
            	</tr>
            </tbody></table>
           <%@ include file="customer_info.jsp" %>
            <%@ include file="applier_info.jsp" %>
            <%@ include file="payment_info.jsp" %>
        </td>
        <td width="5" valign="middle"></td>
        <td valign="top">
            <%@ include file="celphone_info.jsp" %>
        </td>
    </tr>
    
</tbody></table>
<table cellpadding="0" cellspacing="0" align="center" width="99%" height="65">
    <tbody><tr>
        <td valign="middle" align="right">
        <span id="btn_submit">
            <input type="button" value=" 저 장 " style="width:100px;height:50px;" class="cshand" onclick="checkMemsubmit('C110');">&nbsp;
            <input type="button" value=" 초기화 " style="width:100px;height:50px;" class="cshand" onclick="location.href='?prgid=C1101&amp;gNo=WKRS91949443';">&nbsp;
            <input type="button" value=" 닫기 " style="width:100px;height:50px;" class="cshand" onclick="self.close();">
        </span><span id="btn_view" style="display:none;"></span>
        </td>
    </tr>
</tbody></table>


<script>try{for(var lastpass_iter=0; lastpass_iter < document.forms.length; lastpass_iter++){ var lastpass_f = document.forms[lastpass_iter]; if(typeof(lastpass_f.lpsubmitorig2)=="undefined"){ lastpass_f.lpsubmitorig2 = lastpass_f.submit; lastpass_f.submit = function(){ var form=this; var customEvent = document.createEvent("Event"); customEvent.initEvent("lpCustomEvent", true, true); var d = document.getElementById("hiddenlpsubmitdiv"); for(var i = 0; i < document.forms.length; i++){ if(document.forms[i]==form){ d.innerText=i; } } d.dispatchEvent(customEvent); form.lpsubmitorig2(); } } }}catch(e){}</script>