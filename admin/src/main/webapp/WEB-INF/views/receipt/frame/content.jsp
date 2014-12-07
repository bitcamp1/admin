<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
<!--
	#receipt_ctn_frame{width:1200px;}
	#receipt_ctn_frame tr td{padding:10px 10px 10px 0;}
	#receipt_list_td{vertical-align: top;}
	.receipt_frame_subtitle{color: #366CB3;font-weight: bold;}
	.receipt_frame_excel{float:right;}

	#receipt_list_ttl{width:60%;height:26px;}
	.receipt_ctn_frame_subtitle{border-bottom:2px solid #0963A6;}
	#receipt_daily_dashboard_ttl{width:35%;height:26px;}
-->
</style>
<table id='receipt_ctn_frame'>
	<tr>
		<td id='receipt_list_ttl' class='receipt_ctn_frame_subtitle' >
			<span class='receipt_frame_subtitle' >리스트</span>
			<span class='receipt_frame_excel'><button>엑셀</button></span></td>
		<td id='receipt_daily_dashboard_ttl' class='receipt_ctn_frame_subtitle'>
			<span class='receipt_frame_subtitle' >업체별 요금 수납현황</span>
		</td>
					
	</tr>
	<tr>
		<td id='receipt_list_td' rowspan=2><%@ include file="../crud/list.jsp" %></td>
		<td><%@ include file="../crud/day_lst.jsp" %></td></tr>
	<tr><td><%@ include file="../crud/mnth_lst.jsp" %></td>
		
	</tr>
</table>    



