<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#search_input{width:99%;}

</style>    
<table id='search_input' class="subtitle">
	
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >상세검색</td>
		<td class="subtitle_etc">
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">&nbsp;&nbsp;
            <input type="button" value=" 검 색 " class="button04 h20" onclick="document.schFrm.submit();">&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>
<script>
$(function(){
	$('#registBtn').click(function(){window.open('${pageContext.request.contextPath}/credit/registform.do','popup','width=800,height=700');});
});
	
</script>