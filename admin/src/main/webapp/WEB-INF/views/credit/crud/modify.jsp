<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/body/up.jsp" %>    
<%@ include file="../frame/title.jsp"%>
<table width="99%" class="subtitle">

	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">기본정보입력</td>
		<td class="subtitle_etc"></td>
	</tr>
</tbody></table>

<table width="630" class="tp_form1">
	<form name="fieldFrm" _lpchecked="1"></form>
	<input type="hidden" name="prgid" value="S111">
	<input type="hidden" name="phoneChk">
	
	<tbody><tr height="30">
		<td class="addhead">ㆍ소속</td>
		<td width="215" style="padding:0 0 0 10px;">
		    <select name="diCode" onchange="chgdiCode();">
		    <option value="">:::총판:::</option>
        	<option value="WKRB90907790">휴대폰할인마트</option>
<option value="WKRB90907792">지인판매</option>


        	</select>
        	<select name="frCode" onchange="chgfrCode();">
	        <option value="">:::지사:::</option>
        	</select>
		</td>
		<td class="addhead">ㆍ담당자</td>
		<td style="padding:0 0 0 10px;">
        	<select name="teCode" onchange="chgteCode();">
	        <option value="">:::팀:::</option>
        	</select>
        	<select name="emCode">
	        <option value="">:::상담원:::</option>
    		</select>
		</td>
	</tr>
	

	<tr height="30">
		<td class="addhead">ㆍ등록일자</td>
		<td width="215" style="padding:0 0 0 10px;">
		    2013-10-24
		</td>
		<td class="addhead">ㆍ기존통신사</td>
		<td style="padding:0 0 0 10px;">
			<select name="tongsinSa">
            <option value="">::통신사::</option><option value="1002" style="color:#ff0000;">SKT</option>
<option value="1003" style="color:#0000ff;">KT</option>
<option value="1004" style="color:#ff00ff;">LGU+</option>
<option value="1005" style="color:#cc99ff;">MVNO</option>

            </select>

		</td>
	</tr>
	<tr height="30">
		<td class="addhead">ㆍ판매유형</td>
		<td width="215" style="padding:0 0 0 10px;">
			<select name="eventCode">
            <option value="">::판매유형::</option>
            <option value="1001">오프라인</option>
<option value="1002">T-gate</option>

            </select>
		</td>
		<td class="addhead">ㆍ개통처</td>
		<td width="215" style="padding:0 0 0 10px;">
			<select name="openerCode">
            <option value="">::선택::</option>
            <option value="WKRE90907790" selected="">S코드</option>
<option value="WKRE90907791">Y코드</option>

            </select>
		</td>
	</tr>
	<tr height="30">
		<td class="addhead">ㆍ고객명</td>
		<td style="padding:0 0 0 10px;" colspan="3">
		    <input type="text" name="creName" value="" class="input_text imea" size="10">
		    <input type="radio" name="creAddUser" value="1">명의자
		    <input type="radio" name="creAddUser" value="2" checked="">신청자
		</td>
	</tr>
	<tr height="30">
		<td class="addhead">ㆍ주민번호</td>
		<td width="215" style="padding:0 0 0 10px;">
			<input type="text" name="creSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.fieldFrm.creSocno2.focus();}"> -
			<input type="text" name="creSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.fieldFrm.cell1.focus();}">
		</td>
		<td class="addhead">ㆍ휴대번호</td>
		<td style="padding:0 0 0 10px;">
		    <input type="text" name="cell1" value="" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);" onkeyup="if (this.value.length==3){document.fieldFrm.cell2.focus();}"> -
			<input type="text" name="cell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.fieldFrm.cell3.focus();}"> -
			<input type="text" name="cell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
			<input type="button" value="중복" class="button06 h20" onclick="dupCell('S113');">
		</td>
	</tr>
	<tr height="30">
		<td class="addhead">ㆍ조회상태</td>
		<td style="padding:0 0 0 10px;" colspan="3">
		    <input type="radio" name="creState" value="10" id="creState_10" checked=""><span style="color:rgb(0,0,0);"><label for="creState_10">조회요청</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="11" id="creState_11"><span style="color:rgb(142,164,255);"><label for="creState_11">보류</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="12" id="creState_12"><span style="color:#000080;"><label for="creState_12">신규등록</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="20" id="creState_20"><span style="color:#008080;"><label for="creState_20">유치실패</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="77" id="creState_77"><span style="color:#0000ff;"><label for="creState_77">접수완료</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="15" id="creState_15"><span style="color:#3366ff;"><label for="creState_15">주민번호오류</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="16" id="creState_16"><span style="color:rgb(0,0,0);"><label for="creState_16">명의불일치</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="17" id="creState_17"><span style="color:rgb(255,82,87);"><label for="creState_17">요금미납</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="18" id="creState_18"><span style="color:#ff0000;"><label for="creState_18">SKT회선제한</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="19" id="creState_19"><span style="color:#ff0000;"><label for="creState_19">할부회선제한</label></span>&nbsp;&nbsp;
<input type="radio" name="creState" value="21" id="creState_21"><span style="color:#ff0000;"><label for="creState_21">신용불량자</label></span>&nbsp;&nbsp;

		</td>
	</tr>
    <tr>
        <td class="addhead">ㆍ배송주소</td>
        <td valign="middle" colspan="3" class="pdl7">
            <input type="text" name="hzip1" size="4" value="" class="input_text imed" maxlength="3" readonly="">-<input type="text" name="hzip2" size="4" value="" class="input_text imed" maxlength="3" readonly="">
            <input type="button" value="주소검색" class="button06 h20" onclick="GlbZipcodeSearch('S1111');">
            <br>
            <input type="text" name="haddr1" size="50" value="" class="input_text imea" readonly="">
            <br>
            <input type="text" name="haddr2" size="55" value="" class="input_text imea">
        </td>
    </tr>
	<tr height="30">
		<td class="addhead">ㆍ상담메모</td>
		<td colspan="3" style="padding:0 0 0 7px;">
		    <textarea name="request_memo" class="textarea imea" style="width:98%;height:30px;"></textarea>
		</td>
	</tr>
	<tr height="30">
		<td class="addhead">ㆍ본사메모</td>
		<td colspan="3" style="padding:0 0 0 7px;">
		    <textarea name="uchange_memo" class="textarea imea" style="width:98%;height:50px;background-color:#EEEEEE;" readonly=""></textarea>
		</td>
	</tr>
	
</tbody></table>

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

<%@ include file="../../common/footer.jsp" %>