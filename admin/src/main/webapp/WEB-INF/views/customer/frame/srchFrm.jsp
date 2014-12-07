<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <style>
<!--
#search_input{width:1200px;margin:0 auto;}
.button{cursor:pointer;height:30px;}
#regist{}
-->
</style>
<table id='search_input'>
	<tbody><tr height="26">
		<td height="70" class="pdt3" valign="bottom" width="250">
		    <%@ include file="../../common/telecom_icon.jsp" %>
		</td>
		
		<td class="pdt3" valign="bottom">
		    <select name="sitem">
	            <option value="1">신청자명</option>
	            <option value="2" selected="">명의자명</option>
	            <option value="3">주민번호</option>
	            <option value="4">휴대번호</option>
	            <option value="5">개통일련번호</option>
	            <option value="6">할부금액</option>
	            <option value="7">유심번호</option>
            </select>
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">
            <input type="button" value=" 검 색 " class="button04" style="height:30px;" onclick="document.schFrm.submit();">
            <input type="button" id='regist' class="cshand button06" onclick="popFieldSize('/_Member/?prgid=C1101','memAdd',1024,790);" value=" 신규등록 ">
		</td>
	</tr>
</tbody></table>

<script>
	$(function(){
		$('#regist').click(function(){window.open('${pageContext.request.contextPath}/customer/regist.do','memAdd',1024,790);});
	});
</script>