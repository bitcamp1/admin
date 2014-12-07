<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table class="subtitle" style="margin-top:20px;width:99%">
	<tbody>
		<tr height="26">
			<td class="subtitle_subject" width="230" valign="top">요금제 목록</td>
			<td class="subtitle_etc">
			    <input type="button" id='btnAdd_tariff' value=" 요금제 추가 " class="button03 h20" />
			</td>
		</tr>
	</tbody>
</table>				
<script>
$(function(){
	$('#btnAdd_tariff').click(function(){window.open(
		'${pageContext.request.contextPath}/tariff/regist.do',
		'popup',
		'width=800, height=200'
	);});
});
</script>
