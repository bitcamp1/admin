<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<table style="width:99%;">
	<tbody><tr>
		<td height="48" style="color:#757575;font-size:18px;font-weight:bold;">
			<img src="<c:url value='/resources/img/common/blue_circle.gif'/>" >관리자모드 
				<span style="letter-spacing:-5px;">&gt;&gt;</span>&nbsp;
				<span style="color:#333333;">요금제관리</span>
		</td>
	</tr></tbody></table>

<table style="width:99%;" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">상세검색</td>
		<td class="subtitle_etc"></td>
	</tr></tbody></table>

<input type="text" class="hidden">
<%@ include file="search_input.jsp" %>
<%@ include file="search.jsp" %>
<table class="tp_list1" style='width:99%;'>
	<tbody><tr height="30">
		<th class="listhead1" width="50">번호</th>
		<th class="listhead1" width="60">구분</th>
		<th class="listhead1" width="90">적용통신사</th>
		<th class="listhead1" >유형별</th>
		<th class="listhead1" >교체색상</th>
		<th class="listhead1" width="100">이벤트</th>
		<th class="listhead1" width="15%">할부금액</th>

		
		<th class="listhead1" width="80">사용유무</th>
		<th class="listhead1" width="80">접속상태</th>
		
		<th class="listhead1" width="100">관리</th>
		
	</tr>
	
	</tbody></table>
		
	
	
	
	


<form name="delFrm">
<input type="hidden" name="idxNo">
<input type="hidden" name="pageno" value="1">
</form>
<form name="postFrm">
<input type="hidden" name="prgid">
<input type="hidden" name="gNo">
<input type="hidden" name="idxNo">
<input type="hidden" name="oCode">
</form>

<!-- 컨텐츠 끝 -->