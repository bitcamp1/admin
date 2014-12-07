<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/body/up.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/policy/content.css"/>
<script src="${pageContext.request.contextPath}/resources/js/policy/content.js"></script>
<ul class='tabs'>   
	<li><a href='#tab1'>입고관리</a></li>     
	<li><a href='#tab2'>출고관리</a></li>    
	<li><a href='#tab3'>기타관리</a></li>
</ul>      
     <div >
     	<div id='tab1' class='tab_ctn'><%@ include file="../store_in.jsp"%></div>
     	<div id='tab2' class='tab_ctn'><%@ include file="../store_out.jsp"%></div>
     	<div id='tab3' class='tab_ctn'><%@ include file="../store_etc.jsp"%></div>
     </div>