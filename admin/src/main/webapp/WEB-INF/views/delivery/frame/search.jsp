<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<input type="text" class="hidden">
	<table  class="tp_form1" style='width:99%'>
	
	<tbody><tr height="30">
		<td class="formhead1">ㆍ검색필드</td>
		<td width="937" colspan="5" style="padding:0 0 0 7px;">
			<select name="sitem">
            <option value="1">신청자명</option>
            <option value="2" selected>명의자명</option>
            <option value="3">주민번호</option>
            <option value="4">휴대번호</option>
            <option value="5">개통일련번호</option>
            </select>
			<input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {searchsbmit('schFrm');}">
			<input type="button" value=" 검 색 " class="button04" style="height:20px;" onclick="searchsbmit('schFrm');">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 업로드 " class="button06" style="height:20px;" onclick="addFieldSize('I115','700','320');">
		</td>
	</tr>
	
	<tr height="30">
		<td class="formhead1">ㆍ개통처</td>
		<td style="padding:0 0 0 10px;" colspan="2">
		    <input type="radio" name="openCode" value="WKRE90907790" onclick="document.schFrm.submit();">S코드
<input type="radio" name="openCode" value="WKRE90907791" onclick="document.schFrm.submit();">Y코드
<input type="radio" onclick="resetState(2);"><span style="color:red;">상태값 초기화</span>&nbsp;&nbsp;

		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ모델명</td>
		<td style="padding:0 0 0 10px;">
		    <select name="modelCode" onchange="document.schFrm.submit();">
	    		<option value="">::모델명::</option>
	    		<option value="1001">SHW-M440S(S3-3G)</option>
				<option value="1007">SHV-E210S_16G(S3-4G)</option>
				<option value="1008">LG-F160S</option>
				<option value="1009">LG-F100S(뷰)</option>
				<option value="1012">SHV-E250S_32G(노트2)</option>
				<option value="1016">IPHONE5_32G</option>
				<option value="1017">IPHONE5_16G</option>
				<option value="1018">IPHONE5_64G</option>
				<option value="1023">LG-F240S(옵지프로)</option>
				<option value="1025">SHV-E300S_32G(갤4)</option>
				<option value="1027">SHV-E330S_32G(LTE-A)</option>
				<option value="1028">LG-F320S(옵G2)</option>
				<option value="1029">SM-N900S(노트3)</option>
    		</select>
		</td>
	</tr>
	

	
</tbody></table>