<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tbody><tr>
		<td valign="top" style="padding-top:11px;padding-left:10px;">
<!-- 컨텐츠 시작 -->
<%@ include file="title.jsp" %>
<%@ include file="table_title.jsp" %>
<%@ include file="search.jsp" %>

<%@ include file="table_title2.jsp" %>
<table width="99%" class="tp_list1">
    <form name="modalFrm"></form>
	<tbody><tr height="30">
		<th class="listhead1" width="3%">번호</th>
		<th class="listhead1" width="4%">등록일자</th>
		<th class="listhead1" width="7%">개통처</th>
		<th class="listhead1" width="7%">모델명</th>
		<th class="listhead1" width="5%">유심카드</th>
		<th class="listhead1" width="7%">색상</th>
		<th class="listhead1" width="7%">고객명</th>
		<th class="listhead1" width="7%">휴대번호</th>
		<th class="listhead1" width="7%">진행상태</th>
		<th class="listhead1" width="7%">개통상태</th>
		<th class="listhead1" width="7%">고객번호</th>
		<th class="listhead1" width="7%">일련번호</th>
		<th class="listhead1" width="7%">송장번호</th>
		<th class="listhead1" width="7%">유심번호</th>
	</tr>
    
	<tr height="30">
		<td class="list0 tac pdt3" colspan="21"></td>
	</tr>
	
	
</tbody></table>

<form name="delFrm">
<input type="hidden" name="idxNo">
<input type="hidden" name="pageno" value="0">
</form>

<form name="execlFrm">
<input type="hidden" name="prgid">
<input type="hidden" name="mode" value="">
<input type="hidden" name="sitem" value="">
<input type="hidden" name="stext" value="">
<input type="hidden" name="openCode" value="">
<input type="hidden" name="modelCode" value="">
</form>
<!-- 컨텐츠 끝 -->
		</td>
		<td></td>
	</tr>
</tbody></table>