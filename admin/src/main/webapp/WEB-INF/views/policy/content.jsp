<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/policy/content.css"/>
<script src="${pageContext.request.contextPath}/resources/js/policy/content.js"></script>
<ul class='tabs'>   
	<li ><a href='#tab1' >SKT리베이트</a></li>     
	<li><a href='#tab2' >판매처 위탁수수료</a></li>    
	<li><a href='#tab3' >추가차감현황</a></li>
</ul>      
     <div >
     	<div id='tab1' class='tab_ctn'><%@ include file="rebate/main.jsp"%></div>
     	<div id='tab2' class='tab_ctn'><%@ include file="commission/main.jsp"%></div>
     	<div id='tab3' class='tab_ctn'><%@ include file="deduction/main.jsp"%></div>
     </div>
