<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../../common/body/up.jsp" %>   
<%@include file="../../../../manager/frame/lnb.jsp" %>
	

<table style="width:99%;">
	<tbody>
		<tr>
			<td height="48" style="color:#757575;font-size:18px;font-weight:bold;">
				<img src="<c:url value='/resources/img/common/blue_circle.gif'/>" >관리자모드 
					<span style="letter-spacing:-5px;">&gt;&gt;</span>&nbsp;
					<span style="color:#333333;">요금제관리</span>
			</td>
		</tr>
	</tbody>
</table>
<table style="width:99%;" class="subtitle">
	<tbody>
		<tr height="26">
			<td class="subtitle_subject" width="230" valign="top">상세검색</td>
			<td class="subtitle_etc"></td>
		</tr>
	</tbody>
</table>
<input type="text" class="hidden">
<%@ include file="search.jsp" %>
<%@ include file="content.jsp" %>


