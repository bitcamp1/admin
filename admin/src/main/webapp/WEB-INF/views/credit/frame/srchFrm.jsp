<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#search_input{width:99%;}

</style>    
<form name="schFrm" method="get" action="">
<table id='search_input' class="subtitle">
	<tr><td colspan="2">
	<input type="hidden" name="prgid" value="S110"/>
	<input type="hidden" name="mode" value="sch"/>
	</td></tr>
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >상세검색</td>
		<td class="subtitle_etc">
            <selected name="sitem">
	            <option value="name" selected>고객명</option>
	            <option value="socno">주민번호</option>
	            <option value="cell">휴대번호</option>
            <input type="text" name="stext" value="" class="input_text imea" size="25" 
            	onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">&nbsp;&nbsp;
            <input type="button" value=" 검 색 " class="button04 h20" 
            	onclick="document.schFrm.submit();">&nbsp;&nbsp;&nbsp;
            <input id='registBtn' type="button" value=" 조회등록 " class="button02 h25" >
		</td>
	</tr>
</table>
</form>
<script>
$(function(){
	$('#registBtn').click(function(){
		window.open('${pageContext.request.contextPath}/credit/registform.do','popup','width=800,height=700');});
});
	
</script>