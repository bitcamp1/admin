<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding='utf-8'%>
<table style="width:99%">
	<tbody>
		<tr>
			<td height="48" style="color:#757575;font-size:18px;font-weight:bold;">
				<img src="<c:url value='/resources/img/common/blue_circle.gif'/>" >관리자모드 
				<span style="letter-spacing:-5px;">&gt;&gt;</span>&nbsp;
				<span style="color:#333333;">사원관리</span>
			</td>
		</tr>
	</tbody>
</table>
<table width="99%" class="subtitle">
	<tbody>
		<tr height="26">
			<td class="subtitle_subject" width="230" valign="top">상세검색</td>
			<td class="subtitle_etc"></td>
		</tr>
	</tbody>
</table>

<%@include file="search.jsp" %>
<%@ include file='content.jsp'%>


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
