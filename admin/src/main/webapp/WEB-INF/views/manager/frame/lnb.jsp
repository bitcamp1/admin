<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#mgmt_lnb{width:100%; }
	.lnb_ttl{text-align: left;font-weight: bold;font-size: 12px;color: red;margin:10px 10px 10px 0;}
	.lnb_ttl_sub{text-align: center;font-weight: bold;font-size: 12px;margin:0 10px 0 10px;}
</style>    
<div id='mgmt_lnb'>
   	<div class="lnb_ttl">권한관리  
   		<span class="lnb_ttl_sub"><a href='#'>: 사원</a></span>
   		<span class="lnb_ttl_sub"><a href='#'>총판</a></span></div>
   	<div class="lnb_ttl">상품관리 
   	<span class="lnb_ttl_sub"><a href='#'>: 단말기</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>색상</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>신용조회상태</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>진행상태코드</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>택배</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>번호이동인증</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>판매유형</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>가입유형</a></span>
   	<span class="lnb_ttl_sub" id="tariff"><a href='#'>요금제</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>할부개월</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>약정개월</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>가입비</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>유심카드</a></span></div>
   	<div class="lnb_ttl">정책관리  
   	<span class="lnb_ttl_sub"><a href='#'>: 영업승인코드</a></span>
   	<span class="lnb_ttl_sub"><a href='#'>추가차감항목</a></span></div>
</div>
<script>
$(function(){
	$('#tariff').click(function(){location.href='${pageContext.request.contextPath}/tariff/main.do';});
		

});
</script>