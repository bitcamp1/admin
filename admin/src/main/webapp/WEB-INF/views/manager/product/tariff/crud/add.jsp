<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../../../common/header.jsp" %>    

<table style="width:99%" class="subtitle">
	<tbody>
		<tr height="26">
			<td class="subtitle_subject" width="230" valign="top">정보입력</td>
			<td class="subtitle_etc"></td>
		</tr>
	</tbody>
</table>
<%@ include file='addFrm.jsp' %>
<table style='width:630px;' >
	<tbody>
		<tr height="60">
			<td align="center">
				<span id="btn_submit">
					<img src="<c:url value='/resources/img/credit/btn_ok.gif'/>" 
						border="0" align="middle" class="cshand" onclick="checksubmit('S111');">
					<img src="<c:url value='/resources/img/credit/btn_close.gif'/>" 
						border="0" align="middle" class="cshand mgl30" onclick="self.close();">
				</span>
				<span id="btn_view" style="display:none;"></span>
			</td>
		</tr>
	</tbody>
</table>
<%@ include file="../../../../common/footer.jsp" %>