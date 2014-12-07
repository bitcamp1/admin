<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/body/up.jsp" %>
 <style>
 	#content th{font-size: 12px;background-color: #ddd;}
 	#subtitle{width:99%;margin:20px 0 10px 0;}
 	#subtitle tr{height:20px;}
 	#subtitle tr td.#subtitle{width:230px; valign:top;}
 </style>   
<table id='subtitle' class="subtitle">
	<tr>
		<td class="subtitle_subject">신용조회 요청</td>
		<td class="subtitle_etc"></td>
	</tr>
</table>

<table id='content' class="tp_list1">
<tbody>
	<tr height="30">
			<th >순번</th>
			<th >등록일자</th>
			<th >총판</th>
			<th >고객명</th>
			<th >고객번호</th>
			<th >조회상태</th>
			<th >관리</th>
			<th >착한기변대상</th>
			<th >자사번호</th>
			<th >1회선제한</th>
			<th >2회선제한</th>
			<th >메모</th></tr>
	<tr>
		<td class="list1 ffmver fsz11">4158</td>
		<td class="list1 pdt3">13.05.15</td>
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		<td class="list1 pdt3"><b><span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91949766','','','_S120',650,500);" class="cshand" title="클릭후 강민 고객 정보수정">강민</span></b><br><span style="color:#ff0000;">SKT</span></td>
		<td class="list1 pdt3">********<br>010-7777-7777</td>
		<td class="list1 pdt3"><span style="color:rgb(142,164,255)">보류</span></td>
		<td class="list1 pdt3"><input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&amp;gNo=WKRS91949766&amp;oCode=WKRE90907790';"></td>
		<td class="list1 pdt3">착한기변대상</td>
		<td class="list1 pdt3">자사번호</td>
		<td class="list1 pdt3">1회선제한</td>
		<td class="list1 pdt3">2회선제한</td>
		<td class="list1 pdt3">메모</td></tr></tbody></table>

<form name="pagingFrm">
<input type="hidden" name="prgid" value="S110">
<input type="hidden" name="pageno">
<input type="hidden" name="pagesize" value="20">
<input type="hidden" name="fraCode" value="">
<input type="hidden" name="branchCode" value="">
<input type="hidden" name="teCode" value="">
<input type="hidden" name="counselorCode" value="">
<input type="hidden" name="creState" value="">
<input type="hidden" name="sitem" value="">
<input type="hidden" name="stext" value="">
<input type="hidden" name="sDate" value="">
<input type="hidden" name="eDate" value="">
<input type="hidden" name="openCode" value="">
<input type="hidden" name="tongsinSa" value="">
<input type="hidden" name="eventCode" value="">
</form>
<%-- <%@ include file="paging.jsp" %> jQuery로 페이징 처리부분--%>

<!-- 컨텐츠 끝 -->

<script>
$(function(){
	$('#name').click(function(){window.open('${pageContext.request.contextPath}/credit/name.do');});
});


</script>