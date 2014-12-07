<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="body/up.jsp" %>
<style>
	.top{width:1200px;height:50px;margin:0 auto;}
	.top img{margin-right:10px;float:right;}
	#calculator{font-weight: bold; color:#ff6600;cursor: pointer;}
	#test{font-weight: bold; color:#ff6600;cursor: pointer;}
	.login{float:right;}
</style>
   

<div class='top'>
	<span id='calculator'>　　할부이자계산기</span>&nbsp;&nbsp;
	<!-- <span id='test'>　　테스트 페이지 이동</span>&nbsp;&nbsp; -->
	
	<img src="http://smtech.kradmin.co.kr/images/top_left/time_icn.gif" /><span class="date" id="clockView" style="color:#000000;"></span>
	<img src="http://smtech.kradmin.co.kr/images/top_left/btn_logout.gif" onclick="location.href='/?prgid=X1132';" class="cshand" alt="로그아웃버튼"/>
	<img src="http://smtech.kradmin.co.kr/images/top_left/btn_infomodify.gif" onclick="popSize('/_Manager/?prgid=M1350', '_modify', 618, 270);" class="cshand" alt="정보수정버튼">
	<img src="http://smtech.kradmin.co.kr/images/top_left/smile_icn.gif" /><span class="login">본사님 께서 로그인하셨습니다.</span>	
</div>




<script>
	$(function(){
		$('#calculator').attr('target','_blank');
		$('#calculator').click(function(){window.open('http://www.imemi.co.kr/calculation/index.html');});
			
		$('#test').click(function(){window.open('${pageContext.request.contextPath }/test/main.do');});
	});
</script>