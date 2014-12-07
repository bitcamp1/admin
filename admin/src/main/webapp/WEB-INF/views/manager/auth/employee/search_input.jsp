<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table width="99%" class="tp_form1">
	<form name="schFrm" method="get" action=""></form>
	<input type="hidden" name="prgid" value="M110">
	<input type="hidden" name="mode" value="sch">
	<tbody><tr height="30">
		<td class="formhead1">ㆍ검색필드</td>
		<td width="937" colspan="3" class="pdl7">
			<input type="checkbox" name="sitem" value="name" onclick="GlbCheckConvRadio('document.schFrm.sitem','0');" checked="">사원명&nbsp;&nbsp;
			<input type="checkbox" name="sitem" value="uid" onclick="GlbCheckConvRadio('document.schFrm.sitem','1');">아이디&nbsp;&nbsp;
			<input type="checkbox" name="sitem" value="cell" onclick="GlbCheckConvRadio('document.schFrm.sitem','2');">휴대전화번호&nbsp;&nbsp;
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ검색어</td>
		<td width="934" colspan="3" class="pdl10">
			<input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {searchsuubmit('schFrm');}">
			<input type="button" value=" 검 색 " class="button04 h20" onclick="searchsuubmit('schFrm');">
		</td>
	</tr>
	
</tbody></table>