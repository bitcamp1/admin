<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<table width="99%">
	<tbody><tr>
		<td height="48" style="color:#757575;font-size:18px;font-weight:bold;">
			<img src="<c:url value='/resources/img/common/blue_circle.gif'/>" >관리자모드 <span style="letter-spacing:-5px;">&gt;&gt;</span>&nbsp;<span style="color:#333333;">사원관리</span>
		</td>
	</tr>
</tbody></table>
<table width="99%" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">상세검색</td>
		<td class="subtitle_etc"></td>
	</tr>
</tbody></table>
<input type="text" class="hidden"><%@ include file="search_input.jsp" %>
<%@include file="search.jsp" %>
<table width="99%" class="tp_list1">
	<tbody><tr height="30">
		<th class="listhead1" width="50">번호</th>
		<th class="listhead1" width="60">부서</th>
		<th class="listhead1" width="90">입사/퇴사일</th>
		<th class="listhead1" >사원명</th>
		<th class="listhead1" >작업현황</th>
		<th class="listhead1" width="100">휴대전화</th>
		<th class="listhead1" width="15%">메신져</th>
		<th class="listhead1" width="60">직급</th>
		<th class="listhead1" width="100">아이디</th>
		
		<th class="listhead1" width="80">사용유무</th>
		<th class="listhead1" width="80">접속상태</th>
		
		<th class="listhead0" width="100">관리</th>
		
	</tr>
	
	<tr height="30">
		<td class="list1 ffmver fsz11">6</td>
		<td class="list1 pdt3">전산</td>
		<td class="list1 pdt3">2012-10-23</td>
		<td class="list1 ffmver">김진세</td>
		
		<td class="list1 pdt3"><input type="button" value="작업현황" class="button06 h20" onclick="popPostFieldSize('./?prgid=M117','M117','','jinse88','','workView2',468, 350);"></td>
		
		<td class="list1 pdt3">111-1111-1111</td>
		<td class="list1 pdt3">111@naver.com</td>
		<td class="list1 pdt3">사원</td>
		<td class="list1 pdt3">jinse88</td>
		
		<td class="list1 pdt3">사용</td>
		<td class="list1 pdt3"><span class="tab">접속중</span></td>
		
		<td class="list0">
			<input type="button" class="button03 h20" value=" 수정 " onclick="popPostFieldSize('./?prgid=M115','M115','','66','','userView2', 618, 350);">
			
    		    <input type="button" class="button04 h20 cshand" value=" 삭제 " onclick="delectUser('M1109','WKRG90907799','123456');">
    		
		</td></tr></tbody></table>
		
	
	
	
	


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