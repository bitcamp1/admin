<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../common/head.jsp" %>    
<%@ include file="../../../common/title.jsp"%>
<table style="width:99%" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">정보입력</td>
		<td class="subtitle_etc"></td>
	</tr></tbody></table>

<form name="fieldFrm" >
	<table style="width:630px" class="tp_form1">
		<tbody>
			<tr height="30">
				<td class="addhead">ㆍ적용통신사</td>
				<td width="215" style="padding:0 0 0 10px;">
				    <select name="diCode" onchange="chgdiCode();">
					    <option value="">:::선택:::</option>
			        	<option value="skt">SKT</option>
						<option value="kt">KT</option>
						<option value="lgu">LGU</option>
					</select>
	        	</td>
				<td class="addhead">ㆍ구분</td>
				<td style="padding:0 0 0 10px;">
		        	<input type='radio' name='gubun' value='wireless' checked/>무선
		        	<input type='radio' name='gubun' value='wire' />유선
				</td>
			</tr>
			<tr height="30">
				<td class="addhead">ㆍ유형명</td>
				<td width="215" style="padding:0 0 0 10px;">
				    <input type="text">
				</td>
				<td class="addhead">ㆍ글씨색상</td>
				<td style="padding:0 0 0 10px;">
					<input type='text'>
					<input type='button' value='색상'>
				</td>
			</tr>
			<tr height="30">
				<td class="addhead">ㆍ이벤트</td>
				<td width="215" style="padding:0 0 0 10px;">
					<input type='radio' name='event' value='y' checked/>Y
					<input type='radio' name='event' value='n' />N
				</td>
				<td class="addhead">ㆍ할부금액</td>
				<td width="215" style="padding:0 0 0 10px;">
					<input type='text'>
				</td>
			</tr>
		</tbody>
	</table>
</form>	



<table width="630">
	<tbody><tr height="60">
		<td align="center">
		<span id="btn_submit">
			<img src="<c:url value='/resources/img/credit/btn_ok.gif'/>" border="0" align="absmiddle" class="cshand" onclick="checksubmit('S111');">
			<img src="<c:url value='/resources/img/credit/btn_close.gif'/>" border="0" align="absmiddle" class="cshand mgl30" onclick="self.close();">
		</span><span id="btn_view" style="display:none;"></span>
		</td>
	</tr>
</tbody></table>

<%@ include file="../../../common/footer.jsp" %>